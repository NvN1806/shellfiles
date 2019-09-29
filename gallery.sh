cd ~/recon/$1/screenshots/
for I in $(ls); do
    echo "$I" >> index.html
    echo "<img src=$I><br>" >> index.html;
    done

cd ~
