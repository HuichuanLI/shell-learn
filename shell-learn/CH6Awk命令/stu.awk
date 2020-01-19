N {
				printf "%-10s%-10s%-10s%-10s%-10s%-10s\n","Name","Yuwen","Math","English","Physical","Total"
			}
		{
				total=$2+$3+$4+$5
				yuwen_sum+=$2
				math_sum+=$3
				eng_sum+=$4
				phy_sum+=$5
				printf "%-10s%-10d%-10d%-10d%-10d%-10d\n",$1,$2,$3,$4,$5,total
			}
			END {
			
				printf "%-10s%-10d%-10d%-10d%-10d\n","",yuwen_sum,math_sum,eng_sum,phy_sum
			
			}
