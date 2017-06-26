#!/bin/bash
# show first device id you have
# usage: bash getPicoId.sh <user> <passwd>

curl -s -D /tmp/pico_$1 -d "username=$1&Password=$2"  https://www.picobrew.com/account/loginAjax.cshtml?returnURL=https://www.picobrew.com/Account/Login.cshtml > /dev/null
#curl -s -b /tmp/pico_$1 https://www.picobrew.com/Members/User/EditSettings.cshtml | grep ZymaticID | cut -d'(' -f2 | cut -d')' -f1
#<div ng-controller="userEquipmentController" ng-init="init([],[{&quot;ZymaticID&quot;:1234,&quot;UID&quot;:&quot;xxx2xx170000&quot;,&quot;Serial&quot;:&quot;20160526001234&quot;,&quot;Alias&quot;:&quot;xxxxxxname&quot;,&quot;Firmware&quot;:&quot;1.1.14&quot;,&quot;ProfileID&quot;:12345}],[])">
#[],[{&quot;ZymaticID&quot;:1234,&quot;UID&quot;:&quot;xxx2xx170000&quot;,&quot;Serial&quot;:&quot;20160526001234&quot;,&quot;Alias&quot;:&quot;xxxxxxname&quot;,&quot;Firmware&quot;:&quot;1.1.14&quot;,&quot;ProfileID&quot;:12345}],[]
#html decode
#[],[{"ZymaticID":1234,"UID":"xxx2xx170000","Serial":"20160526001234","Alias":"xxxxxxname","Firmware":"1.1.14","ProfileID":12345}],[]
curl -s -b /tmp/pico_$1 https://www.picobrew.com/Members/User/EditSettings.cshtml | grep ZymaticID | sed 's/ZymaticID&quot;:/\`/g' |cut -d'`' -f2 | cut -d',' -f1
#1234