rm -f KD*-*-*.tgz KD*-*-*.zip
git add .
git commit -m'clearing last release'
git push
cd firmwareSocket/flipperzero-firmware-wPlugins/
rm -rf dist/ build/ KD*-*-*.tgz KD*-*-*.zip RM*-*-*.tgz RM*-*-*.zip applications/main/clock/icons/
cd assets/
rm -rf dolphin/* icons/* slideshow/* resources/dolphin/*/
rm -f resources/dolphin/manifest.txt
cd ../applications/settings/dolphin_passport/
rm -f *
cd ../../../../../imagePackage/
cp -r applications/ assets/ buildRelease.sh fbt_options.py ../firmwareSocket/flipperzero-firmware-wPlugins/
cd ../firmwareSocket/flipperzero-firmware-wPlugins/
./fbt resources icons dolphin_ext
./buildRelease.sh
cp KD*-*-*.zip KD*-*-*.tgz ../../
cd ../../
git add .
git commit -m'pre-release'
git push