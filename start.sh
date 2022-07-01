#!/bin/sh
# Add your startup script

# Dynamic flag generated by CTFd-whale

echo $FLAG > /home/ctf/flag
cp /home/ctf/flag /home/ctf/flag.txt
chown root:ctf /home/ctf/flag /home/ctf/flag.txt
chmod 640 /home/ctf/flag /home/ctf/flag.txt

export FLAG=not_flag
FLAG=not_flag

# start ctf-xinetd
/etc/init.d/xinetd start; 
trap : TERM INT; 
sleep infinity & wait\