#!/bin/bash
#--------------mariadb start--------------#
service mariadb start
sleep 6

#--------------mariadb config--------------#
# Actual values
# MYSQL_ROOT_PASSWORD="rootpass"
# MYSQL_DB="wordpress_db"
# MYSQL_USER="wpuser"
# MYSQL_PASSWORD="wppass"

# Create database if not exists
mariadb -e "CREATE DATABASE IF NOT EXISTS \`${MYSQL_DB}\`;"

# Create user if not exists
mariadb -e "CREATE USER IF NOT EXISTS \`${MYSQL_USER}\`@'%' IDENTIFIED BY '${MYSQL_PASSWORD}';"

# Grant privileges to user
mariadb -e "GRANT ALL PRIVILEGES ON ${MYSQL_DB}.* TO \`${MYSQL_USER}\`@'%';"

# Flush privileges to apply changes
mariadb -e "FLUSH PRIVILEGES;"

#--------------mariadb restart--------------#
# Shutdown mariadb to restart with new config
mysqladmin -u root -p$MYSQL_ROOT_PASSWORD shutdown

# Restart mariadb with new config in background

mysqld_safe --port=3306 --bind-address=0.0.0.0 --datadir='/var/lib/mysql'
