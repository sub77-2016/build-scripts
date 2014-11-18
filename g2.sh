echo -n "Enter password: "; read PSWD

cd ~/cm-12.0/.repo/local_manifests
curl -O https://raw.githubusercontent.com/Rashed97/local_manifests/master/g2_cm-12.0.xml
cd ~/cm-12.0
repo sync -j16
export RELEASE_TYPE="CM_EXPERIMENTAL"
vendor/cm/get-prebuilts
. build/envsetup.sh
make clobber
brunch d800
cd out/target/product/d800
curl -T cm-*.zip -u rashed:${PSWD} ftp://uploads.androidfilehost.com --ftp-create-dirs
cd ../../../..
rm -rf out/target/product/d800
brunch d801
cd out/target/product/d801
curl -T cm-*.zip -u rashed:${PSWD} ftp://uploads.androidfilehost.com --ftp-create-dirs
cd ../../../..
rm -rf out/target/product/d801
brunch d802
cd out/target/product/d802
curl -T cm-*.zip -u rashed:${PSWD} ftp://uploads.androidfilehost.com --ftp-create-dirs
cd ../../../..
rm -rf out/target/product/d802
brunch ls980
cd out/target/product/ls980
curl -T cm-*.zip -u rashed:${PSWD} ftp://uploads.androidfilehost.com --ftp-create-dirs
cd ../../../..
rm -rf out/target/product/ls980
brunch vs980
cd out/target/product/vs980
curl -T cm-*.zip -u rashed:${PSWD} ftp://uploads.androidfilehost.com --ftp-create-dirs
cd ../../../..
rm -rf out/target/product/vs980
