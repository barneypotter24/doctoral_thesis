#!/bin/bash

git describe --tags --long > VERSION
git show -s --format="%H %ci" >> VERSION

echo VERSION Makefile Makefile.settings run.py README.txt *.cls *.bib chapters *.tex *.py *.sty image >MANIFEST2;
cat MANIFEST2
cat MANIFEST2 | tr ' ' '\n' | sed -e "s/^/kulphd.src\//g" > MANIFEST; 

kulphdDIR=$(pwd)
cd ..

if [ ! -h kulphd.src ]; then
	ln -s $kulphdDIR kulphd.src
fi;

echo "TARRING"
tar -czvf $kulphdDIR/kulphd.src.tgz $(cat $kulphdDIR/MANIFEST);
rm $kulphdDIR/MANIFEST;
rm kulphd.src;


