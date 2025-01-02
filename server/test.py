
import binascii
from Crypto.Cipher import AES


SECRET_KEY = "secret"

def decryptStringGCM(cipherText: str) -> str:
    try:
        data = binascii.unhexlify(cipherText)
        iv, tag = data[:12], data[-16:]
        cipher = AES.new(SECRET_KEY.encode('utf-8'), AES.MODE_GCM, iv)
        plaintext = cipher.decrypt_and_verify(data[12:-16], tag)
        return plaintext.decode("utf-8")
    except ValueError as error:
        return ""
    
    
print(decryptStringGCM("licensekey"))