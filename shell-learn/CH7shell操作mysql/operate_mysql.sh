#!/bin/bash
#

user="root"
password="root"
db_name="$1"

SQL="$2"

mysql -u"$user" -p"$password" -D"$1" -B -e "$SQL"
