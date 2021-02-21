# http://nginx.org/en/download.html

# autoindex styling
# http://nginx.org/en/docs/http/ngx_http_addition_module.html

### prerequisite

# gcc
apt install build-essential

# PCRE
apt install libpcre3 libpcre3-dev

# zlib
apt install zlib1g zlib1g-dev

# OpenSSL
apt install openssl libssl-dev

###

V=nginx-1.19.7

cd ~

# get mainline
wget http://nginx.org/download/$V.tar.gz

# extract
tar zxf $V.tar.gz

cd $V

# configure
./configure \
    --prefix=/usr/local/$V \
    --user=www-data \
    --group=www-data \
    --with-http_v2_module \
    --with-http_ssl_module \
    --with-http_addition_module \

# compile
make

# install
make install

ln -s /usr/local/$V /usr/local/nginx
