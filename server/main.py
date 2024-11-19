#############################################################################
# Copyright (C) 2024 CrowdWare
#
# This file is part of NoCodeService.
#
#  NoCodeService is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 3 of the License, or
#  (at your option) any later version.
#
#  NoCodeService is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with NoCodeService.  If not, see <http://www.gnu.org/licenses/>.
#
#############################################################################

from flask import Flask, request, jsonify
import stripe
import json
import uuid
import smtplib
from nocode_keys import NOCODE_DB_USER
from nocode_keys import NOCODE_DB_PWD
from nocode_keys import NOCODE_DATABASE
from nocode_keys import WEB_HOOK_SECRET
from nocode_keys import STRIPE_API_KEY
from nocode_keys import NOCODE_PRO_LINK
from nocode_keys import NOCODE_STARTER_LINK
from mysql.connector import connect
from mysql.connector.errors import IntegrityError
from email.mime.text import MIMEText



app = Flask(__name__)
stripe.api_key = STRIPE_API_KEY

# TODO change site id
@app.after_request
def add_tracking_code(response):
    if response.content_type == 'text/html; charset=utf-8':
        tracking_code = '<script async defer data-website-id="YOUR_WEBSITE_ID" src="YOUR_UMAMI_SCRIPT_URL"></script>'
        response.set_data(response.get_data().replace(b'</head>', tracking_code.encode('utf-8') + b'</head>'))
    return response

def dbConnect():
    db = connect(unix_socket="/var/run/mysqld/mysqld.sock",
                 user=NOCODE_DB_USER,
                 password=NOCODE_DB_PWD,
                 database=NOCODE_DATABASE)
    return db

@app.route('/check_license', methods=['GET'])
def check_license():
    license_key = request.args.get('licenseKey')
    if not license_key:
        return jsonify({"error": "No license key provided"}), 400
    
    # Teile den Lizenzschlüssel in seine Komponenten auf
    parts = license_key.split('|')
    if len(parts) != 3:
        return jsonify({"error": "Invalid license key format"}), 400

    pkey, license_type, expiry_date = parts
    
    # Verbinde zur Datenbank und überprüfe, ob die pkey existiert
    conn = dbConnect()
    curs = conn.cursor(dictionary=True)
    
    curs.execute("SELECT * FROM account WHERE uuid = %s", (pkey,))
    account = curs.fetchone()
    
    if not account:
        return jsonify({"isValid": False, "licenseType": "", "daysRemaining": 0}), 403

    # Überprüfe, ob die Lizenzinformationen mit der Datenbank übereinstimmen
    if account['license'] != license_type:
        return jsonify({"isValid": False, "licenseType": "", "daysRemaining": 0}), 403

    # Überprüfe das Ablaufdatum
    expiry = datetime.strptime(expiry_date, '%Y-%m-%d')
    days_remaining = (expiry - datetime.now()).days
    
    if days_remaining < 0:
        return jsonify({"isValid": False, "licenseType": license_type, "daysRemaining": 0}), 403
    
    return jsonify({"isValid": True, "licenseType": license_type, "daysRemaining": days_remaining}), 200


def generate_license_key(license, uuid):
    # Erstelle das Ablaufdatum in 3 Monaten
    expiry_date = (datetime.now() + timedelta(days=90)).strftime('%Y-%m-%d')
    
    # Erstelle die Zeichenkette, die verschlüsselt wird
    license_info = f"{license}|{expiry_date}|{uuid}"
    
    # Erstelle eine Instanz des Paddings
    padder = padding.PKCS7(algorithms.AES.block_size).padder()
    padded_data = padder.update(license_info.encode()) + padder.finalize()
    
    # Erstelle einen IV (Initialisierungsvektor)
    iv = os.urandom(16)

    # Hier nehmen wir an, dass du einen festen Schlüssel für die Verschlüsselung hast.
    # In der Praxis sollte dies ein sicherer, zufällig generierter und gut bewachter Schlüssel sein.
    encryption_key = b'your-very-secret-key-here'  # 16, 24, or 32 byte long for AES-128, AES-192, or AES-256 respectively
    
    # Erstelle den Cipher für AES in CBC Modus
    cipher = Cipher(algorithms.AES(encryption_key), modes.CBC(iv), backend=default_backend())
    encryptor = cipher.encryptor()
    
    # Verschlüssele die gepaddete Nachricht
    ct = encryptor.update(padded_data) + encryptor.finalize()
    
    # Base64 kodiere den Ciphertext und den IV für einfaches Handling
    return base64.b64encode(iv + ct).decode()


def registerUser(uuid, name, email, locale, license):
    
    conn = None
    try:
        conn = dbConnect()
        curs = conn.cursor(dictionary=True)
        
        # Überprüfe, ob UUID bereits existiert
        query = "SELECT COUNT(*) AS count FROM account WHERE uuid = %s"
        curs.execute(query, (user_uuid,))
        row = curs.fetchone()
        count = row['count']

        if count == 1:
            query = "UPDATE account SET name = %s, email = %s, locale = %s, license = %s, date = NOW() WHERE uuid = %s"
            params = (name, email, locale, license, user_uuid)
        else:
            query = "INSERT INTO account (uuid, name, email, locale, license, date) VALUES (%s, %s, %s, %s, %s, NOW())"
            params = (user_uuid, name, email, locale, license)
        
        curs.execute(query, params)
        conn.commit()
        return True
    except IntegrityError as error:
        print(f"Database Integrity Error: {error}")
        return False
    except Exception as error:
        print(f"An error occurred: {error}")
        return False
    finally:
        if conn is not None:
            conn.close()
    
@app.route('/')
def hello_world():
    return render_template_string('''
    <!doctype html>
    <html lang="en">
    <head>
        <title>Hello from Flask</title>
    </head>
    <body>
        <h1>Hello from Flask!</h1>
    </body>
    </html>
    ''')

@app.route('/checkout', methods=['POST'])
def checkout():
    webhook_secret = WEB_HOOK_SECRET
    request_data = json.loads(request.data)
    print("checkout")
    if webhook_secret:
        # Retrieve the event by verifying the signature using the raw body and secret if webhook signing is configured.
        signature = request.headers.get('stripe-signature')
        print("signature: " + signature)
        try:
            event = stripe.Webhook.construct_event(
                payload=request.data, sig_header=signature, secret=webhook_secret)
            data = event['data']
        except Exception as e:
            print("Exception")
            print(e)
            return e
        # Get the type of webhook event sent - used to check the status of PaymentIntents.
        event_type = event['type']
    else:
        data = request_data['data']
        event_type = request_data['type']

    if event_type == 'checkout.session.completed':
        license = "FREE"
        print('🔔 Payment succeeded!')
        session = event['data']['object']

        # Extrahiere die E-Mail des Kunden
        #subscription = session["subscription"]
        payment_link = session["payment_link"]
        locale = session["locale"]
        if payment_link == NOCODE_PRO_LINK:
            license = "PRO"
        elif payment_link == NOCODE_STARTER_LINK:
            license = "STARTER"
        customer_email = session["customer_details"]["email"]
        customer_name = session["customer_details"]["name"]

        # save customer here
        uuid = str(uuid.uuid4())
        if registerUser(uuid, customer_name, customer_email, locale, license):
            print("User successfully registered")
            send_license_email(customer_email, customer_name, locale, generate_license_key(license, uuid))
        else:
            print("Failed to register user")

    return jsonify({"status": "success"}), 200


def send_license_email(email, name, locale, license_key):
    sender = "japp.olaf@gmail.com"
    recipients = [email]
    if locale == "de":
        msg = MIMEText(f"Vielen Dank für Ihren Kauf!\nIhr Lizenzschlüssel lautet: {license_key}")
        msg['Subject'] = "Ihr Lizenzschlüssel für NoCodeDesigner"
    else:
        msg = MIMEText(f"Thank you for the purchase!\nYour license key is: {license_key}")
        msg['Subject'] = "Your license key for NoCodeDesigner"


    msg['From'] = sender
    msg['To'] = ', '.join(recipients)
    with smtplib.SMTP_SSL('smtp.gmail.com', 465) as smtp_server:
       smtp_server.login(sender, "luws dobw oypv jgvb")
       smtp_server.sendmail(sender, recipients, msg.as_string())
    print("Message sent!")


