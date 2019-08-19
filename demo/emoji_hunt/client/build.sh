#!/usr/bin/env bash

sudo rm -rf dist
sudo yarn postinstall
sudo parcel build index.html

sudo chown -R graykode:staff dist

sudo rm /Users/graykode/mobileFL/FL/platforms/android/app/src/main/assets/www/js/*.js

cp dist/*.js /Users/graykode/mobileFL/FL/platforms/android/app/src/main/assets/www/js