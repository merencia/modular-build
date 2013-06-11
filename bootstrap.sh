#!/bin/bash
set -e

function becho {
  echo -e "\033[36m$@\033[39m"
}

becho "=============================="
becho " modular-build installer \n"
becho " > by lucasmerencia based on caarlos0's modular-buil"
becho " https://github.com/lucasmerencia/modular-build "
becho " original project: https://github.com/caarlos0/modular-build "
becho "==============================\n\n"

# clone repo
becho "Downloading scripts..."
git clone https://github.com/lucasmerencia/modular-build.git scripts

# link Makefile
becho "Linking Makefile..."
ln -s scripts/Makefile .

becho "Fixing permissions..."
chmod +x scripts/*.sh

becho "\n\n"
becho "=============================="
becho " modular-build installer \n"
becho " Installation successfully finished."
becho "=============================="
