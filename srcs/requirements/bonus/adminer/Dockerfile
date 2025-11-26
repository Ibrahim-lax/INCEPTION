FROM alpine:3.18

# 1. Install PHP and the necessary extensions
RUN apk update && apk add \
    php \
    php-mysqli \
    php-session \
    wget

# 2. Create a folder for the web files
WORKDIR /var/www/html

# 3. Download the ONE Adminer file and rename it to index.php
RUN wget https://github.com/vrana/adminer/releases/download/v4.8.1/adminer-4.8.1.php -O index.php

# 4. Start the built-in PHP web server
CMD ["php", "-S", "0.0.0.0:8080"]