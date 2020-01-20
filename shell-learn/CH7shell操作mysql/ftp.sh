#!/bin/bash
#

ftp -inv << EOF
	open 192.168.184.3
	user ftp_user redhat

	cd /tmp
	put 1.txt
	bye
EOF
