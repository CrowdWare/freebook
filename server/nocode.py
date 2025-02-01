#############################################################################
# Copyright (C) 2025 CrowdWare
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

from flask import Flask, request, jsonify, render_template, make_response
from flask_cors import CORS
import smtplib
import uuid
import bcrypt
import hashlib
from email.mime.text import MIMEText
import mysql.connector
from nocode_keys import NOCODE_DB_PWD
from nocode_keys import NOCODE_DB_USER
from nocode_keys import NOCODE_DATABASE
from nocode_keys import GMAIL_PWD
from nocode_keys import GMAIL_ADDRESS
from nocode_keys import BCC_ADDRESS

app = Flask(__name__)
CORS(app, resources={r"/*": {"origins": "*"}}, supports_credentials=True)


def get_customer_uuid_if_valid(email, password):
    """
    Überprüft, ob der Kunde mit der gegebenen E-Mail existiert und das Passwort korrekt ist.
    Gibt die UUID zurück, wenn die Anmeldung erfolgreich ist, sonst None.
    """
    try:
        db_connection = mysql.connector.connect(
            host="artanidos.mysql.pythonanywhere-services.com",
            user=NOCODE_DB_USER,
            password=NOCODE_DB_PWD,
            database=NOCODE_DATABASE
        )
        cursor = db_connection.cursor(dictionary=True)

        sql = "SELECT uuid, pwd FROM customer WHERE EMAIL = %s"
        cursor.execute(sql, (email,))
        customer = cursor.fetchone()

        if customer and verify_password(password, customer["pwd"]):
            return customer["uuid"]  # Login erfolgreich, UUID zurückgeben
        else:
            return None  # Kunde existiert nicht oder falsches Passwort

    except mysql.connector.Error as err:
        print(f"Error: {err}")
        return None

    finally:
        if cursor:
            cursor.close()
        if db_connection:
            db_connection.close()

def verify_password(pwd, stored_hashed_password):
    """
    Prüft, ob das eingegebene Passwort (gehasht) mit dem gespeicherten Hash übereinstimmt.
    Annahme: Passwörter sind mit SHA-256 gehasht (oder besser bcrypt/argon2 nutzen!).
    """

    return bcrypt.checkpw(pwd.encode('utf-8'), stored_hashed_password.encode('utf-8'))

def check_customer_exists(email):
    try:
        db_connection = mysql.connector.connect(
            host="artanidos.mysql.pythonanywhere-services.com",
            user=NOCODE_DB_USER,
            password=NOCODE_DB_PWD,
            database=NOCODE_DATABASE
        )
        cursor = db_connection.cursor()
        sql = "SELECT COUNT(*) FROM customer WHERE EMAIL = %s"
        cursor.execute(sql, (email,))
        result = cursor.fetchone()
        return result[0] > 0
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        return False
    finally:
        if cursor:
            cursor.close()
        if db_connection:
            db_connection.close()

def save_customer(name, email, pwd, date_of_birth):
    print("About to save")
    try:
        db_connection = mysql.connector.connect(
            host="artanidos.mysql.pythonanywhere-services.com",
            user=NOCODE_DB_USER,
            password=NOCODE_DB_PWD,
            database=NOCODE_DATABASE
        )
        cursor = db_connection.cursor()

        uuid_value = str(uuid.uuid4())
        salt = bcrypt.gensalt()
        hashed_pwd = bcrypt.hashpw(pwd.encode('utf-8'), salt)
        sql = """
            INSERT INTO customer (uuid, name, email, pwd, locale, dob)
            VALUES (%s, %s, %s, %s, %s, %s)
        """
        cursor.execute(sql, (uuid_value, name, email, hashed_pwd, 'en', date_of_birth))
        db_connection.commit()  # Commit the transaction
        print("Customer record saved successfully!")
    except mysql.connector.Error as err:
        print(f"Error: {err}")
        db_connection.rollback()  # Rollback in case of error
    finally:
        if cursor:
            cursor.close()
        if db_connection:
            db_connection.close()

@app.route('/')
def home():
    print("Welcome to nocode")
    return "Welcome to nocode"


@app.route('/login', methods=['GET'])
def loginpage():
    response = make_response(render_template('login.html'))
    response.headers["Cache-Control"] = "no-cache, no-store, must-revalidate"
    response.headers["Pragma"] = "no-cache"
    response.headers["Expires"] = "0"
    response.headers["Access-Control-Allow-Origin"] = "*"
    return response

@app.route('/login', methods=['POST'])
def login():
    email = request.form.get("email")
    pwd = request.form.get("pwd")
    locale = request.form.get("locale")

    if not email or not pwd:
        return jsonify({"error": "Email and password are required"}), 400

    customer_uuid = get_customer_uuid_if_valid(email, pwd)

    if customer_uuid:
        return jsonify({"message": "Login successful", "uuid": customer_uuid}), 200
    else:
        return jsonify({"error": "Invalid email or password"}), 401

@app.route('/course-page', methods=['GET'])
def coursepage():
    return "<h2>Login successful</h2><p>TODO</p>"

@app.route('/confirmation-page', methods=['GET'])
def confirmationpage():
    return "<h2>Registration successful</h2><p>Thank you for your registration, you can now <a id='login-link' href='#'>login</a> normally.</p>"

@app.route('/getverificationcode', methods=['POST'])
def getverificationcode():
    name = request.json.get("name")
    email = request.json.get("email")
    locale = request.json.get("locale")
    website = request.json.get("website")

    combined_string = name + email  # Combine name and email
    hash_object = hashlib.sha256(combined_string.encode())  # Create SHA-256 hash
    hash_hex = hash_object.hexdigest()  # Get the hexadecimal representation
    hash_int = int(hash_hex, 16)  # Convert hex to an integer
    code = str(hash_int % 1000000).zfill(6)
    if locale == "de":
        msg = MIMEText(f"Hallo " + name + "\n\nUm Deine Registrierung für Deinen Account bei '" + website + "' abzuschliessen, nutze bitte den nachfolgenden Code:\n\n" + code + "\n")
        msg['Subject'] = "Dein Registrierungscode für " + website
    else:
        msg = MIMEText(f"Hello " + name + "\n\nTo continue setting up your '" + website + "' account, please verify your account with the code below:\n\n" + code + "\n")
        msg['Subject'] = "Your verification code for " + website
    send_email(email, msg)
    return jsonify({"message": "Email sent successful", "email" : email}), 200


@app.route('/register', methods=['GET'])
def registerpage():
    response = make_response(render_template('register.html'))
    response.headers["Cache-Control"] = "no-cache, no-store, must-revalidate"
    response.headers["Pragma"] = "no-cache"
    response.headers["Expires"] = "0"
    response.headers["Access-Control-Allow-Origin"] = "*"
    return response

@app.route('/register', methods=['POST'])
def register():
    name = request.form.get("name")
    email = request.form.get("email")
    pwd = request.form.get("pwd")
    code = request.form.get("code")
    locale = request.form.get("locale")
    date_of_birth = request.form.get("dob")

    if not name or not email or not code or not pwd or not date_of_birth:
        print("not valid")
        return jsonify({"error": "All fields (name, email, code, pwd, dob) are required"}), 400

    combined_string = name + email
    hash_object = hashlib.sha256(combined_string.encode())  # Create SHA-256 hash
    hash_hex = hash_object.hexdigest()  # Get the hexadecimal representation
    hash_int = int(hash_hex, 16)  # Convert hex to an integer
    chcode = str(hash_int % 1000000).zfill(6)
    if chcode != code :
        print("code does not fit to name and email")
        return jsonify({"error": "The verification code does not fit to the name and email address."}), 400

    # check if email already exists
    if check_customer_exists(email):
        return jsonify({"error": "A customer with this email address is already registered."}), 400

    try:
        save_customer(name, email, pwd, date_of_birth)
        if locale == "de":
            msg = MIMEText(f"Hallo " + name + "\n\nVielen Dank für die Registrierung.")
            msg['Subject'] = "Registrierung bei Art of Touch"
        else:
            msg = MIMEText(f"Hello " + name + "\n\nThank you for the registering with us!\n")
            msg['Subject'] = "Registration to Art of Touch"
        send_email(email, msg)
    except Exception as e:
        print(f"Unexpected error: {e}")
        return jsonify({"error": "Unexpected error"}), 400

    return jsonify({"message": "Registration successful", "name": name, "email": email, "dob": date_of_birth}), 200


def send_email(email, msg):
    # missing a link to enable account or something similar...like: sending a code via email...before saving the account
    sender = GMAIL_ADDRESS
    recipients = [email]
    bcc = [BCC_ADDRESS]

    msg['From'] = sender
    msg['To'] = ', '.join(recipients)
    msg['Bcc'] = ', '.join(bcc)
    with smtplib.SMTP_SSL('smtp.gmail.com', 465) as smtp_server:
       smtp_server.login(sender, GMAIL_PWD)
       smtp_server.sendmail(sender, recipients, msg.as_string())
    print("Message sent!")
