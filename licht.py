import RPi.GPIO as GPIO
import time

    # https://stackoverflow.com/questions/28762993/how-to-unittest-gpio-output-value-of-raspberry-pi-in-python


def init():
    gpio.setmode(gpio.BCM)
    gpio.setup(21,gpio.OUT)
    gpio.setup(20,gpio.OUT)

def test(tf):
    init()
    gpio.output(21,True)    #links
    gpio.output(20,False)
    time.sleep(tf)
    gpio.cleanup()

def links(tf):
    init()
    gpio.output(21,True)
    gpio.output(20,False)
    time.sleep(tf)
    gpio.cleanup()

def rechts(tf):
    init()
    gpio.output(21,False)
    gpio.output(20,True)
    time.sleep(tf)
    gpio.cleanup()

def beide(tf):
    init()
    gpio.output(21,True)
    gpio.output(20,True)
    time.sleep(tf)
    gpio.cleanup()




links(2)
rechts(2)
beide(2)