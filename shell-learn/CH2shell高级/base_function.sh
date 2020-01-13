#!/bin/echo
# Warning:This is a library which should not be executed,only be sourced in you scripts
#

function print_platform
{
  local osname=`uname -s`

  PLATFORM=UNKNOW

  case "$osname" in
    "FreeBSD")
      PLATFORM="FreeBSD"
      ;;
    "SunOS")
      PLATFORM="Solaris"
      ;;
    "Linux")
      PLATFORM="Linux"
      ;;
  esac
  return 0
}

function add
{
  echo `expr $1 + $2`
}
function reduce
{
  echo `expr $1 - $2`
}
function multiple
{
  echo `expr $1 \* $2`
}
function divide
{
  echo `expr $1 / $2`
}