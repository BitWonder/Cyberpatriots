# Cyberpatriots

## Use

* git clone https://github.com/BitWonder/Cyberpatriots.git

* cd Cyberpatriots

* chmod +x update.sh

* ./update.sh

## Need to Know

###### Update

`sudo apt-get update && sudo apt-get upgrade -y`

or

```
sudo apt-get update
sudo apt-get upgrade
```

###### Firewall

`sudo install ufw && sudo ufw enable && sudo ufw status -y`

or

```
sudo install ufw
sudo ufw enable
sudo ufw status
```

###### Find Files

`locate "*.mp3" "*.mp4" "*.jpeg" `

`sudo find -name *.mp3``

###### Web Browser

Fun!

`sudo apt install w3m w3m-img`

###### Things to Remove

```
sudo apt-get remove wireshark
sudo apt-get remove ophcrack

// only remove if not in readme

sudo apt-get remove apache
sudo apt-get remove apache2
sudo apt-get remove nginx
```

###### SSH Config

`sudo nano etc/ssh/sshd_config`

`PermitRootLogin no`

`AllowTcpForwarding no`

`X11Forwarding no`

`UsePAM no`

```
ClientAliveInterval 45
ClientAliveCountMax 3
```

`MaxAuthTries 4`

`PermitEmptyPasswords no`

`LogLevel INFO`

`Pass Day`

###### Config



###### Contraband

On root desktop

`mkdir contraband`

to move

`mv {file to move} /home/{root user}/Desktop/contraband`

###### More info

https://gist.github.com/bobpaw/a0b6828a5cfa31cfe9007b711a36082f

https://www.youtube.com/watch?v=JVxkTqLoyGY

---------------------------------------------------------------

Just Some Windows Stuff?
------------------------

Guest Account not enable

Admin check

Firewall Protection

Don't require ctrl-alt-del

FillZilla has been stoped (Apache2 and Nginx)

Update

WinRar Update

Remove Goose

RDP network enable

------------------------------

Server?
-------

Unknown

Backdoor: netstat -anb ???

Remove unauth

Sufficient Password

Defender exclude exe <- enable

file share disable for hidden sharing <- netshare

Install anitvirus

DNS server stop and disable

Update windows

Notepad++ update

Putty has been updated

Remove Metasploit framework software installer

REMOVE PONG!!!

remove netcat backdoor

SMB compression enable

------------------------------------

Linux?
------

mp3's were their

del netcat <- somehow

min password age set ->

greeter dosn't enumerate acounts -> /etc/lightdm.conf

```
autologin-guest=false
greeter-hide-users=true
guest=false

VNC server 
enable=false

XMCDP server
enable=false
```

IPv4 TCP SYN cookies -> sysctl conf

```
/etc/sysctl.conf

net.ipv4.tcp_sync_cookie=true
ICMP accept_redirtect=0
secure_redirect = 1
send_redirects = 0
accept_source_route = 0
log_martains = 1
```

ufw

----

/etc/shadow <- set perms

chmod 640 /etc/shadow

check with

stat -c %a /etc/shadow

----

SMTP has been disabled

sudo systemctl <- need to know

chromium can be installed thru apt

LibreOffice

sudo apt-get install tree

tree -L # <- -L sees files

sudo apt show --installed

sudo apt purge nmap

sudo lsof -i <- listening port

chromium ( block adds and blockers ) -> { security settings: strict protection, https: secure, block popups }

FPT allow ssl

--------------------------------------------

## More Linux

/etc/pam/common-password

password required pam_unix.so remember=5

password requisite pam_pwquality.so


/etc/sudoers

Defaults authenticate

https://cpxvi.s3.amazonaws.com/cpxvi_tr/CPXVI_Ubuntu22_Training2_Answer_Key.pdf