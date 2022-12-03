cd ../firmwareSocket/flipperzero-firmware-wPlugins/
rm -rf dist/ build/
cd assets/
rm -rf dolphin/* icons/* slideshow/* resources/dolphin/*/
rm -f resources/dolphin/manifest.txt
cd ../applications/settings/dolphin_passport/
rm -f *
cd ../../../../../imagePackage/
cp -r applications/ assets/ ../firmwareSocket/flipperzero-firmware-wPlugins/
cd ../firmwareSocket/flipperzero-firmware-wPlugins/
./fbt resources icons dolphin_ext
./fbt updater_package
cd ../../imagePackage/
cp -r ../firmwareSocket/flipperzero-firmware-wPlugins/dist/f7-C/f7-update-KD07FAP/ ../