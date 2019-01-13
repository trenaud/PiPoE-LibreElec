#!/usr/bin/python

import sys
sys.path.append ( "/storage/.kodi/addons/virtual.rpi-tools/lib" )
import RPi.GPIO as GPIO
import os
import time

GPIO.setmode(GPIO.BCM)
GPIO.setup(17, GPIO.OUT)
GPIO.output(17, GPIO.LOW)

time.sleep(30)
