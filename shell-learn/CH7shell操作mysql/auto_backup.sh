#!/bin/bash
#

db_user="dbuser"
db_password="123456"
db_host="192.168.184.132"

ftp_user="ftp_user"
ftp_password="redhat"
ftp_host="192.168.184.3"

dst_dir="/data/backup"
time_date="`date +%Y%m%d%H%M%S`"
file_name="school_score_${time_date}.sql"

function auto_ftp
{
	ftp -niv << EOF
		open $ftp_host
		user $ftp_user $ftp_password

		cd $dst_dir
		put $1
		bye
EOF
}

mysqldump -u"$db_user" -p"$db_password" -h"$db_host" school score > ./$file_name && auto_ftp ./$file_name
