import telnetlib

host = "your_remote_host"
port = 23  # порт telnet
tn = telnetlib.Telnet(host, port)

heart = "\u2764"
tn.write(heart.encode('utf-8'))

tn.close()
