 BEGIN{
				FS=":"
			}
			
			{
				if($3<50)
				{
					printf "%-20s%-25s%-5d\n","UID<50",$1,$3
				}
				else if($3>50 && $3<100)
				{
					printf "%-20s%-25s%-5d\n","50<UID<100",$1,$3
				}
				else
				{
					printf "%-20s%-25s%-5d\n","UID>100",$1,$3
				}
			}
