import bcrypt
import hashlib

password = "1234"
hashed=hashlib.sha256(password.encode())

with open("passwordhash1.txt","w") as f1:
    f1.write(hashed.hexdigest())

print(hashed.hexdigest())