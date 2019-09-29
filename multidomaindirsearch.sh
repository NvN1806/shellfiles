for I in $(cat ~/recon/$1/live.txt); do
    python3 dirsearch.py -u $I -e txt,html,php,json ;
    done

