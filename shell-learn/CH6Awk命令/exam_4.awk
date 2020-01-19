BEGIN {
	printf "%-10s%-20s%-20s%-20s\n","User","Total","Sucess","Failed"
}

{
	TOTAL[$6]+=$8
	SUCCESS[$6]+=$14
	FAIL[$6]+=$17
}

END {
	for(u in SUCCESS)
	{
		total+=TOTAL[u]
		success+=SUCCESS[u]
		fail+=FAIL[u]
		printf "%-10s%-20d%-20d%-20d\n",u,TOTAL[u],SUCCESS[u],FAIL[u]
	}

	printf "%-10s%-20d%-20d%-20d\n","",total,success,fail
}
