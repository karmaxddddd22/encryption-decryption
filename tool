from cryptography.fernet import Fernet as dpsisbad
from colorama import Fore

Fore.BLUE
print(f'''
         _nnnn_
        dGGGGMMb
       @p~qp~~qMb
       M|@||@) M|
       @,----.JM|
      JS^\__/  qKL                  
     dZP        qKRb                        
    dZP          qKKb
   fZP            SMMb
   HZM            MMMM
   FqM            MMMM                 
 __| ".        |\dS"qML                
 |    `.       | `' \Zq
_)      \.___.,|     .'
\____   )MMMMMP|   .'
     `-'       `--' 
''')

karma = input("Do You Have A Key? (yes - y and no - n)\n> ")

if karma == "y":
    key = input("Enter Your Key Here \n> ").encode()
    print(key.decode())
else:
    key = dpsisbad.generate_key() 
    print("Please Keep this Key Safely.\n>  ")
    print(key.decode())
dpsstalks = dpsisbad(key)
while True:
    karma2 = input("Do You Want to Encode Or Decode The Message? (Encode = e, Decode = d, quit = q)\n>  ")
    if karma2 == "e":
        gg = input("Enter the text you want to encode. \n>  ")
        encoded_text = gg.encode()
        token = dpsstalks.encrypt(encoded_text)
        print(token.decode())
    elif karma2 == "d":
        text1 = input("Enter the the encrypted text. \n>  ").encode()
        token = dpsstalks.decrypt(text1)
        print(token.decode())
    elif karma2 in ("q", "exit", "quit"):
        break
        
