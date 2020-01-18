BEGIN{
    printf "%-8s%-8s%-8s%-8s%-8s%s\n","Name","Yuwen","Math","English","Pysical","Average"
}
{
    total=$2+$3+$4+$5
	avg=total/4
	if(avg>90)
	{
		printf "%-10s%-10d%-10d%-10d%-10d%-0.2f\n",$1,$2,$3,$4,$5,avg
		score_chinese+=$2
        score_english+=$3
        score_math+=$4
        score_physical+=$5
	}

}

END{

	printf "%-10s%-10d%-10d%-10d%-10d\n","",score_chinese,score_english,score_math,score_physical

}
