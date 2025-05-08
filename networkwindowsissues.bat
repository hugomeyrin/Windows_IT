@echo off 
@echo "This scipt will take of your Network issues Resetting your Network Cardx"
netsh winsock reset
netsh int ip reset
netsh advfirewall reset
ipconfig / flushdns
ipconfig / release
ipconfig / renew
