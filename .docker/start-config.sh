#!/bin/bash

php artisan config:clear
# php artisan jwt:secret

if [ ! -d public/storage ];
then
    rm public/storage
fi

php artisan storage:link --force

if [ ! -d storage/app/public/images ];
then
    mkdir -p storage/app/public/images
fi

chmod -R 777 storage
chmod -R 777 storage/app/public
chmod -R 777 storage/app/public/images
