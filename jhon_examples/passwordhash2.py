import hashlib

password = "hola"

hashed = hashlib.sha256(password.encode())

with open("passwordhash2.txt", "w") as f1:
    f1.write(hashed.hexdigest())