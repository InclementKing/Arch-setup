import subprocess

rootpw = input("root pw: ")
username = input("username: ")
userpw = input('User pw: ')

stuff = open("stuff.txt", 'w')
stuff.write("$ROOTPW=" + rootpw)
stuff.write("$USER=" + username)
stuff.write('PASS=' + userpw)

subprocess.call('chrooted.sh', shell=True)