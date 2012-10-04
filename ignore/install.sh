pushd .
cd /var/www/html/path
sudo /usr/local/bin/composer install
sudo chown apache:apache . -R
popd
