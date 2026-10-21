set -e
rm -rf www && mkdir www
cp index.html style.css app.js www/
cp node_modules/hls.js/dist/hls.min.js www/hls.min.js
sed -i 's#https://cdnjs.cloudflare.com/ajax/libs/hls.js/1.5.13/hls.min.js#hls.min.js#' www/index.html
