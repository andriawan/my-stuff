#!/bin/bash

#define function first
getDate()
{
date '+%d %B %Y'
}

showHomeMenu(){
clear
getDate
echo "Hello, $USER Welcome to your personal assistant: "
echo "1) check IP"
echo "2) service status"
echo "3) cek the ds"
echo "2) service status"
}

readHomeOptions(){
echo "-------------------------------"
read -p "choose your option: " option
echo "-------------------------------"
}

showHomeMenu
readHomeOptions
