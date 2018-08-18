#!/bin/sh

# Re-creating index.html
rm -f ./index.html
cp ./.div/design/index.html ./index.html

# Inject google analytics
div @inject -ff ./.div/pieces/google-analytics.html -fb "<!--{analytics}-->" -tf ./index.html -ta "<head>"

# Re-creating assets
rm -f -R ./assets
rm -f -R ./assets/css
rm -f -R ./assets/js
rm -f -R ./assets/fonts
rm -f -R ./assets/bootstrap

div @mkdir ./assets/css
div @mkdir ./assets/js
div @mkdir ./assets/fonts
div @mkdir ./assets/img
div @mkdir ./assets/bootstrap/css
div @mkdir ./assets/bootstrap/js
div @mkdir ./assets/bootstrap/fonts

cp -R ./.div/design/assets/*.* ./assets
cp -R ./.div/design/assets/css/*.* ./assets/css
cp -R ./.div/design/assets/js/*.* ./assets/js
cp -R ./.div/design/assets/fonts/*.* ./assets/fonts
cp -R ./.div/design/assets/img/*.* ./assets/img

cp -R ./.div/design/assets/bootstrap/css/*.* ./assets/bootstrap/css
cp -R ./.div/design/assets/bootstrap/fonts/*.* ./assets/bootstrap/fonts
cp -R ./.div/design/assets/bootstrap/js/*.* ./assets/bootstrap/js

# Clean
rm ./index.html.bak
