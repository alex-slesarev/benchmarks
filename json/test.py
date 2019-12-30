import json
import platform
import socket
import os

def notify(msg):
    with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
        if not s.connect_ex(("localhost", 9001)):
            s.sendall(bytes(msg, 'utf8'))

notify("%s\t%d" % (platform.python_implementation(), os.getpid()))

text = open('./1.json', 'r').read()
jobj = json.loads(text)
len = len(jobj['coordinates'])
x = 0
y = 0
z = 0

for coord in jobj['coordinates']:
  x += coord['x']
  y += coord['y']
  z += coord['z']

print(x / len)
print(y / len)
print(z / len)

notify("stop")
