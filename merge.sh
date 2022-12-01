cd ../flipperzero-firmware-wPlugins/
rm -r -f dist/ build/
cd assets/
rm -r -f dolphin/* icons/* slideshow/* resources/dolphin/*/
rm -f resources/dolphin/manifest.txt
cd ../applications/settings/dolphin_passport/
rm -f *
cd ../../../../kd07CustomGraphics/
cp -r applications/ assets/ ../flipperzero-firmware-wPlugins/
cd ../flipperzero-firmware-wPlugins/
./fbt resources icons dolphin_ext
./fbt updater_package
cd ../kd07CustomGraphics/
cp -r ../flipperzero-firmware-wPlugins/dist/f7-C/f7-update-KD07FAP/ ./