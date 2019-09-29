#! /bin/bash

echo "<--------------------------------starting assetfinder ----------------------------->"
mkdir ~/recon/$1
assetfinder --subs-only $1 > ~/recon/$1/af.txt
echo "<--------------------------------completed  assetfinder ----------------------------->"

echo "<--------------------------------starting findomain ----------------------------->"
cd ~/recon/$1/
findomain -t $1  -o txt
cd ~
echo "<--------------------------------completed findomain----------------------------->"

echo "<--------------------------------starting anew -----------------------------<"
cd ~/recon/$1/
cat af.txt | anew $1.txt
cd ~
echo "<--------------------------------completed anew  ----------------------------->"

echo "<--------------------------------starting httprobe ----------------------------->"
cd ~/recon/$1/
cat af.txt | httprobe > live.txt
cd ~
echo "<--------------------------------completed httprobe ----------------------------->"

echo "<--------------------------------starting webscreenshots ----------------------------->"
cd ~/shellfiles/
python3 webscreenshot.py -i ~/recon/$1/live.txt -o ~/recon/$1/screenshots/ -w 20 -a "X-FORWARDED-FOR:127.0.0.1"
./gallery.sh $1
cd ~
echo "<--------------------------------completed webscreenshots ----------------------------->"

echo "<-------------------------------starting directorysearching ----------------------------->"
cd ~/shellfiles/
./multidomaindirsearch.sh $1  > ~/recon/$1/dir.txt
cd ~
cd ~/recon/$1/
cat dir.txt | grep 200 > 200.txt
cat dir.txt | grep 301 > 300.txt
cat dir.txt | grep 401 > 400.txt
cat dir.txt | grep 404 > 400.txt
cat dir.txt | grep 501 > 500.txt
cd ~
echo "<--------------------------------completed directory searching ----------------------------->"

echo "<--------------------------------completed finding assets! let's start hunting ----------------------------->"

