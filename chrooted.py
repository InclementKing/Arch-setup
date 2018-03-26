import subprocess

rootpw = input("root pw: ")
username = input("username: ")
userpw = input('User pw: ')

stuff = open("stuff.txt", 'w')
stuff.write("$ROOTPW=" + rootpw + "\n")
stuff.write("$USER=" + username + "\n")
stuff.write('PASS=' + userpw + "\n")

subprocess.call('chrooted.sh', shell=True)