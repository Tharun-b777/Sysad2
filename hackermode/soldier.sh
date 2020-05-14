#!/bin/bash

cat <<EOF> /home/tharun/Desktop/light.conf
<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    ServerName soldier.io

    ProxyPass / http://localhost:3333/complaints.php/
    ProxyPassReverse / http://localhost:3333/complaints.php/

  </VirtualHost>
EOF
