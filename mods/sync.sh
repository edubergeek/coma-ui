#!/bin/bash

cd COMA-UI
git reset --hard HEAD && git clean -f -d && git pull
cd ..

for f in mods/update*.sh
do
	bash $d
done
