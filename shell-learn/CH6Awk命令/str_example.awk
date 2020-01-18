BEGIN{
    FS=":"
}

{
    i=1
    while(i<=NF)
    {
        if(i==NF)
            printf "%d",length($i)
        else
            printf "%d:",length($i)
        i++
    }
    print ""
}