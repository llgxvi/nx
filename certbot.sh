apt install certbot

certbot --standalone -d x.com -d www.x.com certonly

A=/etc/letsencrypt/live/x.com
B=/usr/local/nginx/conf

ln -s $A/fullchain.pem $B/x.com.crt
ln -s $A/privkey.pem   $B/x.com.key
