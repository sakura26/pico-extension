#!/bin/bash
# show device status
# usage: bash getPicoDeviceStatus.sh <user> <passwd> <deviceId>

curl -b /tmp/pico_$1 -d "option=getZymatic&getActiveSession=true&id=$3" https://www.picobrew.com/JSONAPI/Zymatic/Zymatic.cshtml > /tmp/pico_$1_status
if [ -z `cat /tmp/pico_$1_status` ]
  then
  curl -s -D /tmp/pico_$1 -d "username=$1&Password=$2"  https://www.picobrew.com/account/loginAjax.cshtml?returnURL=https://www.picobrew.com/Account/Login.cshtml > /dev/null
  curl -b /tmp/pico_$1 -d "option=getZymatic&getActiveSession=true&id=$3" https://www.picobrew.com/JSONAPI/Zymatic/Zymatic.cshtml > /tmp/pico_$1_status
fi
cat /tmp/pico_$1_status

#curl -s -D /tmp/pico_$1 -d "username=$1&Password=$2"  https://www.picobrew.com/account/loginAjax.cshtml?returnURL=https://www.picobrew.com/Account/Login.cshtml
#curl -b /tmp/pico_$1 -d "option=getZymatic&getActiveSession=true&id=$3" https://www.picobrew.com/JSONAPI/Zymatic/Zymatic.cshtml
: '
idle
{
  "ID": 1234,
  "Type": "Zymatic",
  "Firmware": "1.1.14",
  "Alias": "xxxx",
  "State": "Cleaning",
  "UpdateAvailable": false,
  "BrewsSinceLastClean": 1,
  "LastBrewStart": "2017-05-14T03:08:05.267Z",
  "ActiveSession": {
    "ID": 123434,
    "ProfileID": 12344,
    "MachineType": "Zymatic",
    "BrewType": "Cleaning",
    "Firmware": "1.1.14",
    "WortTemp": 0,
    "BlockTemp": 0,
    "TargetABV": 0.0,
    "ABVTweak": null,
    "TargetIBU": 0.0,
    "IBUTweak": null,
    "SRM": 0.0,
    "OG": null,
    "FG": null,
    "StepName": "Rinse",
    "BeerName": "Rinse v3",
    "BrewerName": "Pico Programs",
    "BeerStyle": "Lite American Lager",
    "GUID": "1234ef9e54e349f123d3d53fe6fa1234",
    "BeerGUID": null,
    "RecipeGUID": null,
    "StartTime": "2017-05-14T08:33:11.66Z",
    "LastLogDate": null,
    "SecondsRemaining": null,
    "Review": null,
    "Active": true,
    "BrewLogs": [],
    "BrewNotes": null,
    "RecipeID": null,
    "IsFreeStyle": false,
    "ImageLocation": "https://picobrewcontent.blob.core.windows.net/images/Brewhouse/gfc_cleaning.png"
  },
  "SerialNumber": null,
  "ManufactureDate": "0001-01-01T00:00:00Z",
  "PicoErrorsDict": null,
  "MaxBrewsBeforeClean": 3
}

busy
{
  "ID": 1234,
  "Type": "Zymatic",
  "Firmware": "1.1.14",
  "Alias": "xxxx",
  "State": "Cleaning",
  "UpdateAvailable": false,
  "BrewsSinceLastClean": 0,
  "LastBrewStart": "2017-04-25T11:10:59.813Z",
  "ActiveSession": {
    "ID": 123434,
    "ProfileID": 12344,
    "MachineType": "Zymatic",
    "BrewType": "Cleaning",
    "Firmware": "1.1.14",
    "WortTemp": 0,
    "BlockTemp": 0,
    "TargetABV": 0.1,
    "ABVTweak": null,
    "TargetIBU": 0.0,
    "IBUTweak": null,
    "SRM": 0.0,
    "OG": null,
    "FG": null,
    "StepName": "Clean Mash",
    "BeerName": "Cleaning v1",
    "BrewerName": "PicoPrograms",
    "BeerStyle": "Lite American Lager",
    "GUID": "12349cf640fa4fc9a12344de24c5c123",
    "BeerGUID": null,
    "RecipeGUID": null,
    "StartTime": "2017-05-03T13:39:29.233Z",
    "LastLogDate": null,
    "SecondsRemaining": null,
    "Review": null,
    "Active": true,
    "BrewLogs": [
      {
        "BrewLogID": 8909520,
        "Date": "2017-05-03T13:39:46.033Z",
        "WortTemp": 78,
        "BlockTemp": 84,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": "Heat Water",
        "Note": null
      },
      {
        "BrewLogID": 8909521,
        "Date": "2017-05-03T13:39:48.377Z",
        "WortTemp": 78,
        "BlockTemp": 84,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909525,
        "Date": "2017-05-03T13:40:48.43Z",
        "WortTemp": 81,
        "BlockTemp": 90,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909529,
        "Date": "2017-05-03T13:41:48.44Z",
        "WortTemp": 92,
        "BlockTemp": 105,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909533,
        "Date": "2017-05-03T13:42:48.457Z",
        "WortTemp": 98,
        "BlockTemp": 110,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909536,
        "Date": "2017-05-03T13:43:48.46Z",
        "WortTemp": 104,
        "BlockTemp": 116,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909539,
        "Date": "2017-05-03T13:44:48.53Z",
        "WortTemp": 109,
        "BlockTemp": 121,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909543,
        "Date": "2017-05-03T13:45:48.597Z",
        "WortTemp": 115,
        "BlockTemp": 126,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909546,
        "Date": "2017-05-03T13:46:48.587Z",
        "WortTemp": 120,
        "BlockTemp": 131,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909550,
        "Date": "2017-05-03T13:47:48.543Z",
        "WortTemp": 125,
        "BlockTemp": 136,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909553,
        "Date": "2017-05-03T13:48:48.457Z",
        "WortTemp": 130,
        "BlockTemp": 141,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909557,
        "Date": "2017-05-03T13:49:48.553Z",
        "WortTemp": 136,
        "BlockTemp": 147,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909561,
        "Date": "2017-05-03T13:50:48.62Z",
        "WortTemp": 141,
        "BlockTemp": 151,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909565,
        "Date": "2017-05-03T13:51:48.737Z",
        "WortTemp": 146,
        "BlockTemp": 157,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909569,
        "Date": "2017-05-03T13:52:48.757Z",
        "WortTemp": 151,
        "BlockTemp": 162,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909571,
        "Date": "2017-05-03T13:53:05.663Z",
        "WortTemp": 151,
        "BlockTemp": 162,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": "Clean Mash",
        "Note": null
      },
      {
        "BrewLogID": 8909574,
        "Date": "2017-05-03T13:53:48.757Z",
        "WortTemp": 152,
        "BlockTemp": 161,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909578,
        "Date": "2017-05-03T13:54:48.827Z",
        "WortTemp": 152,
        "BlockTemp": 162,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909582,
        "Date": "2017-05-03T13:55:48.983Z",
        "WortTemp": 160,
        "BlockTemp": 167,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909587,
        "Date": "2017-05-03T13:56:49.063Z",
        "WortTemp": 153,
        "BlockTemp": 156,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909591,
        "Date": "2017-05-03T13:57:49.067Z",
        "WortTemp": 151,
        "BlockTemp": 159,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909595,
        "Date": "2017-05-03T13:58:49.147Z",
        "WortTemp": 155,
        "BlockTemp": 162,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909599,
        "Date": "2017-05-03T13:59:49.227Z",
        "WortTemp": 146,
        "BlockTemp": 152,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909603,
        "Date": "2017-05-03T14:00:49.273Z",
        "WortTemp": 136,
        "BlockTemp": 147,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909607,
        "Date": "2017-05-03T14:01:49.34Z",
        "WortTemp": 145,
        "BlockTemp": 156,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909611,
        "Date": "2017-05-03T14:02:49.457Z",
        "WortTemp": 158,
        "BlockTemp": 175,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909615,
        "Date": "2017-05-03T14:03:49.467Z",
        "WortTemp": 158,
        "BlockTemp": 162,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909619,
        "Date": "2017-05-03T14:04:49.563Z",
        "WortTemp": 151,
        "BlockTemp": 156,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909623,
        "Date": "2017-05-03T14:05:49.617Z",
        "WortTemp": 154,
        "BlockTemp": 161,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909627,
        "Date": "2017-05-03T14:06:49.637Z",
        "WortTemp": 153,
        "BlockTemp": 158,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909631,
        "Date": "2017-05-03T14:07:49.69Z",
        "WortTemp": 152,
        "BlockTemp": 156,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909635,
        "Date": "2017-05-03T14:08:49.77Z",
        "WortTemp": 149,
        "BlockTemp": 159,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      },
      {
        "BrewLogID": 8909639,
        "Date": "2017-05-03T14:09:50.07Z",
        "WortTemp": 143,
        "BlockTemp": 160,
        "Heat2Temp": 0,
        "StepName": null,
        "Event": null,
        "Note": null
      }
    ],
    "BrewNotes": null,
    "RecipeID": null,
    "IsFreeStyle": false,
    "ImageLocation": "https://picobrewcontent.blob.core.windows.net/images/Brewhouse/gfc_cleaning.png"
  },
  "SerialNumber": null,
  "ManufactureDate": "0001-01-01T00:00:00Z",
  "PicoErrorsDict": null,
  "MaxBrewsBeforeClean": 3
}
'