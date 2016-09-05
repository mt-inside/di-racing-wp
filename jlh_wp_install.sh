#!/bin/bash

wget https://wordpress.org/latest.tar.gz
tar xzf latest.tar.gz
mv wordpress/wp-config-sample.php wordpress/wp-config.php
sed -i 's/database_name_here/diracing_wp/' wordpress/wp-config.php
sed -i 's/username_here/diracing-wp/' wordpress/wp-config.php
sed -i 's/password_here/p9rlMTndmXQ53g65y4UH/' wordpress/wp-config.php
sed -i 's/localhost/localhost/' wordpress/wp-config.php
ncftpput -u diracing -p 'Qavm47~8' -R 109.234.200.253 httpdocs wordpress/*
echo OK
