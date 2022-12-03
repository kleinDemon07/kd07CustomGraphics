rm -rf KD*-*-*.tgz KD*-*-*.zip .sconsign.dblite dist build assets/resources/apps
git pull
./fbt updater_package
DATE_VAR=`date +%m%d`
TIME_VAR=`date +%H%M`
VER_VAR=`cat scripts/version.py | awk '/VERSION/{ gsub(/[",]/,"",$2); print $2}' | tail -1`
HASH_VAR=`git rev-parse \`git branch -r --sort=committerdate | tail -1\` | awk '{print substr($0,1,7)}' | tail -1`
mv dist/f7-C/f7-update-KD07FAP "$VER_VAR-$DATE_VAR-KD$TIME_VAR"
zip -r "KD$DATE_VAR$TIME_VAR-$VER_VAR-$HASH_VAR.zip" "$VER_VAR-$DATE_VAR-KD$TIME_VAR"
tar -czvf "KD$DATE_VAR$TIME_VAR-$VER_VAR-$HASH_VAR.tgz" "$VER_VAR-$DATE_VAR-KD$TIME_VAR"
rm -rf "$VER_VAR-$DATE_VAR-KD$TIME_VAR"
echo " BUILD COMPLETED, ZIP AND TGZ GENERATED"
