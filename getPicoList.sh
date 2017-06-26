#!/bin/bash
# show how many device you have
# usage: bash getPicoList.sh <user> <passwd>

curl -s -D /tmp/pico_$1 -d "username=$1&Password=$2"  https://www.picobrew.com/account/loginAjax.cshtml?returnURL=https://www.picobrew.com/Account/Login.cshtml > /dev/null
curl -s -b /tmp/pico_$1 https://www.picobrew.com/Members/User/EditSettings.cshtml | grep ZymaticID | cut -d'(' -f2 | cut -d')' -f1 | sed 's/&amp;/\&/g; s/&lt;/\</g; s/&gt;/\>/g; s/&quot;/\"/g; s/#&#39;/\'"'"'/g; s/&ldquo;/\"/g; s/&rdquo;/\"/g;'
#<div ng-controller="userEquipmentController" ng-init="init([],[{&quot;ZymaticID&quot;:2318,&quot;UID&quot;:&quot;f242fa170000&quot;,&quot;Serial&quot;:&quot;20160526002137&quot;,&quot;Alias&quot;:&quot;boku no pico&quot;,&quot;Firmware&quot;:&quot;1.1.14&quot;,&quot;ProfileID&quot;:15073}],[])">
#[],[{&quot;ZymaticID&quot;:2318,&quot;UID&quot;:&quot;f242fa170000&quot;,&quot;Serial&quot;:&quot;20160526002137&quot;,&quot;Alias&quot;:&quot;boku no pico&quot;,&quot;Firmware&quot;:&quot;1.1.14&quot;,&quot;ProfileID&quot;:15073}],[]
#html decode
#[],[{"ZymaticID":2318,"UID":"f242fa170000","Serial":"20160526002137","Alias":"boku no pico","Firmware":"1.1.14","ProfileID":15073}],[]