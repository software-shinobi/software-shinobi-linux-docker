
userName="shinobi";

userID="4444";

##

##mkdir /home/users;

useradd -rm -d /home/$userName -s /bin/bash -u $userID $userName;

#chown root:root /home/$userName -R

usermod -a -G sudo shinobi

usermod -a -G docker shinobi

##echo '$userName:$userName' | chpasswd

## make this work later. moving on. // echo '`$userName`:`$userName`' | chpasswd

echo 'shinobi:shinobi' | chpasswd

