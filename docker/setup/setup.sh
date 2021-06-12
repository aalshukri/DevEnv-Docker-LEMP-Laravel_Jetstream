#!/bin/bash
# setup.sh
#

#
start=`date +%s`
now=$(date +"%Y-%m-%d %R")
echo "Running setup for Laravel project $now"

#
# Setup commands
cd /application

# Install composer libs
composer install

# Compile JS and CSS using LaravelMix (webpack.mix.js)
npm install
npm run dev
#npm run prod

# artisan version
php artisan --version

#Setup DB
php artisan migrate:fresh
php artisan db:seed

# Refresh composer
composer dump-autoload


# Laravel application level cache
php artisan config:clear
php artisan config:cache

php artisan route:clear
php artisan route:cache



#
end=`date +%s`
runtime=$((end-start))
echo "Done ($runtime seconds)"