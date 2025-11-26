FROM alpine:3.18

RUN apk add nginx

# Simple Nginx setup to listen on port 8080 (or any non-standard port)
RUN mkdir -p /run/nginx
COPY ngnx.conf /etc/nginx/http.d/default.conf
COPY index.html /var/www/html/index.html

CMD ["nginx", "-g", "daemon off;"]  