#!/usr/bin/env bash

SRC_DIR="$PWD/src"

mkdir out

set -e

cd out

DOWNLOAD_URL=https://warthunder.com/download/launcherLinux/

wget -qO- "$DOWNLOAD_URL" | gunzip | tar xvf -

mkdir launcherr

unzip ./WarThunder/launcherr.dat -d launcherr

cp -rf $SRC_DIR/launcherr/* ./launcherr

mkdir launcher_plug

zip -r -j ./launcher_plug/PromoWarThunderMain.zip $SRC_DIR/launcher_plug/*

cd launcherr
zip -r ../launcherr.dat .
cd -

zip gaythunder_launcher_mod.zip ./launcherr.dat
zip gaythunder_launcher_mod.zip ./launcher_plug/PromoWarThunderMain.zip
