BEGIN {
	printf "%-10s%-20s%-20s\n","User","Sucess_Records","Failed_Records"
}

{

	SUCCESS[$6]+=$14
	FAIL[$6]+=$17
}

END {
	for(u in SUCCESS)
		printf "%-10s%-20d%-20d\n",u,SUCCESS[u],FAIL[u]
}
