import paramiko
import subprocess
import time
import Tkinter
client = paramiko.SSHClient()
client.set_missing_host_key_policy(paramiko.AutoAddPolicy())
client.connect('172.16.100.199',username='root', password='ChennaI&02')
gi = raw_input("Enter the journals name:\n" );
print ("199-libert journals is:",gi);
pot= raw_input("Would like create Article number: \n" );
cmd ="bash /root/Documents/test/libert2.sh";
stdin, stdout, stderr = client.exec_command(cmd);
stdin.write(gi + '\n')
stdin.write(pot + '\n')
stdin.flush()
opt = stdout.readlines("")
opt="".join(opt)
print(opt)
#opt= stderr.readlines("")
#opt ="".join(opt)
#print(opt)
print("------------------------");
time.sleep(5)
