#!/bin/bash

variable="I love you.Do you lovr me"
var1=${variable#*ov}
echo $var1

var2=${variable##*ov}
echo $var2

var3=${variable%ov*}
echo $var3

var4=${variable%%ov*}
echo $var4

