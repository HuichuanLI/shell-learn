BEGIN {
	printf "%-10s%-20s\n","User","Total Records"
}

{
	USER[$6]+=$8
}

END {
	for(u in USER)
		printf "%-10s%-20d\n", u,USER[u]
}
