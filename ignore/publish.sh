pushd .
cd ~/Code/PHP/path
sudo rsync -av --delete --exclude-from=".gitignore" . /var/www/html/path
sudo cp app/config/parameters.yml /var/www/html/path/app/config/
cd /var/www/html/path
sudo php app/console assets:install web
sudo chown apache:apache . -R
popd
