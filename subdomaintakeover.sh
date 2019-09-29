#! /bin/bash

for i in $(cat ~/recon/$1/$1.txt); do 
	host $i
	done


