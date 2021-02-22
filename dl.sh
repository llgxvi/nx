server {
  listen 80;

  location ^~ /dl {
    add_before_body /dl/.autoindex/before.html;
    add_after_body  /dl/.autoindex/after.html;
    autoindex on;
  }
}

server {
  listen 443;

  location ^~ /dl {
    return 301 http://$host$request_uri;
  }
}
