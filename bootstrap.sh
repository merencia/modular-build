#!/bin/bash
set -e

function becho {
  echo -e "\033[36m$@\033[39m"
}

becho "=============================="
becho " modular-build installer \n"
becho " > by merencia based on caarlos0's modular-build"
becho " https://github.com/merencia/modular-build "
becho " original project: https://github.com/caarlos0/modular-build "
becho "==============================\n\n"

echo -n "script folder (scripts): "
read SCRIPTS_FOLDER

clone repo
becho "Downloading scripts..."
git clone https://github.com/merencia/modular-build.git $SCRIPTS_FOLDER

# link Makefile
becho "Linking Makefile..."
ln -s $SCRIPTS_FOLDER/Makefile .

becho "Fixing permissions..."
chmod +x $SCRIPTS_FOLDER/*.sh

becho "\n\n"
becho "=============================="
becho " modular-build installer \n"
becho " Installation successfully finished."
becho "=============================="
