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











------------------------------------------------------------------




# Windows

## active directory!!!

search active directory users and computers

go thru the moving tabs and change stuff based on you wants



## Config DNS

control panel

network and internet

network and sharing center

Eathernet

IPv4

set all to auto

# Back to Active

Active Directory Users and Computers (dsa.msc)

Removed unauthorized users

“Prevent object from accidental deletion”
“Show only in advanced mode”
View -> Advanced Mode

password is not stored using reversible encryption
Properties -> Account -> Store password using reversible encryption

Binky is sensitive and cannot be delegated
Properties -> Account -> Account is sensitive and cannot be delegated

Domain admin account therefore attributing its credentials to some other task or service could be dangerous
Punella requires kerberos preauth

Failure to require kerberos preauth allows for ASREProasting (bruteforce of a user’s kerberos session key)
Removed unauthorized Schema admin Alan
Removed unauthorized DNS admin Bitzi
Can lead to privilege escalation (ServerLevelPluginDLL)
Enterprise Admins are no longer managed by Domain Users
Enterprise Admins -> Properties -> Managed By -> Clear

Changes permissions so that Domain users can update membership of the Enterprise Admin group

A secure minimum password length is set
14-20

Fixing Defender
Messed with permissions on the folder in file explorer and maybe a little in registry 
Can’t edit settings?
 
 
GUI/Commands for defender set registry keys in the same location
HKLM\SOFTWARE\Microsoft\Windows Defender\
However you can also set things through GPOs which will get configured elsewhere and override
HKLM\SOFTWARE\Policies\Microsoft\


Everyone is no longer allowed full control on the SYSVOL share
Computer Management -> Shares -> SYSVOL -> Share Permissions -> Everyone can read

Domain users can no longer read ntds.dit
C:\Windows\NTDS\ntds.dit -> Properties -> Security -> Delete domain users

Default powershell script double click behavior not set to execute
HKEY_CLASSES_ROOT\Microsoft.PowerShellScript.1\Shell\(Default) not set to 0
Other valid options are Open and Edit which will spawn a notepad or ISE window with the given script

Deprecated Triple DES algorithm for windows SCHANNEL disabled
HKLM\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\Triple DES 168\Enabled = 0
Triple DES has a theoretical flaw that could allow for large bits of data to produce duplicate ciphertext blocks

NetBIOS over TCP disabled
HKLM\SYSTEM\CurrentControlSet\Services\NetBT\Parameters\Interfaces\Tcpip_{9e1b6253-7665-4558-8ac5-5108d39a0d59}\NetbiosOptions = 2
Old and unnecessary, used by red team for enumeration and spoofing

System failures do not cause automatic memory dumps
HKLM\SYSTEM\CurrentControlSet\control\CrashControl\CrashDumpEnabled = 0
Prevents potentially sensitive information from being dumped into .dmp files if the system crashes/shuts down
Poorly coded apps could dump things like creds

