import RPi.GPIO as GPIO
import time
import os
import sys
import thread
import requests
#import json

# this program reads pico status and put chiller on
# 20170530 by Ethen 

chiller_relay = 4 #relay1
sparge_relay = 3 #relay2
chiller_step = "Chill"
sparge_step = "Heat to Boil"

# please change your device id here
url = "http://picofollower.anotherdream.tw:81/device/<device_id>/status"
#url = "http://www.ccsakura-net.com/up/pico.txt"
response = requests.get(url)
#data = response.json
data = response.text
#print data
# todo: error handeling
#bad_r.status_code
#http://docs.python-requests.org/zh_CN/latest/user/quickstart.html

GPIO.setmode(GPIO.BCM)
#GPIO.cleanup()
GPIO.setup(chiller_relay, GPIO.OUT)
GPIO.setup(sparge_relay, GPIO.OUT)

sp = data.split(':');
#print len(sp)
if len(sp)==1:
  print data+" action:reset"
  GPIO.output(chiller_relay, GPIO.LOW)
  GPIO.output(sparge_relay, GPIO.LOW)
  sys.exit(0)
print sp[1].strip()
if sp[1].strip()==chiller_step:
  print data+" action:enable chiller"
  GPIO.output(chiller_relay, GPIO.HIGH)
elif sp[1].strip()==sparge_step:
  print data+" action:enable sparge"
  GPIO.output(sparge_relay, GPIO.HIGH)
else:
  print data+" action:reset"
  GPIO.output(chiller_relay, GPIO.LOW)
  GPIO.output(sparge_relay, GPIO.LOW)