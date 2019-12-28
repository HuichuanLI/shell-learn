#!/bin/bash

local_global () {
    local var1='local 1'
    echo Inside function: var1 is $var1 : var2 is $var2
    var1='changed again'   # 这里的 var1 是函数中定义的局部变量
    var2='2 changed again' # 这里的 var2 是函数外定义的全局变量
}

var1='global 1'
var2='global 2'

echo Before function call: var1 is $var1 : var2 is $var2

local_global

echo After function call: var1 is $var1 : var2 is $var2
