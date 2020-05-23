import RPi.GPIO as gpio
import time

def init():
    gpio.setmode(gpio.BCM)
    gpio.setup(17,gpio.OUT)
    gpio.setup(22,gpio.OUT)
    gpio.setup(23,gpio.OUT)
    gpio.setup(24,gpio.OUT)

def test(tf):
    init()
    gpio.output(17,False)    #links rückwärts
    gpio.output(22,True)    #links vorwärts
    gpio.output(23,False)    #rechts rückwärts
    gpio.output(24,False)    #rechts vorwärts
    time.sleep(tf)
    gpio.cleanup()

    

def forward(tf):
    init()
    gpio.output(17,False)
    gpio.output(22,True)
    gpio.output(23,False)
    gpio.output(24,True)
    time.sleep(tf)
    gpio.cleanup()

def reverse(tf):
    init()
    gpio.output(17,True)
    gpio.output(22,False)
    gpio.output(23,True)
    gpio.output(24,False)
    time.sleep(tf)
    gpio.cleanup()

def rightfor(tf):
    init()
    gpio.output(17,False)
    gpio.output(22,False)
    gpio.output(23,False)
    gpio.output(24,True)
    time.sleep(tf)
    gpio.cleanup()

def leftfor(tf):
    init()
    gpio.output(17,False)
    gpio.output(22,True)
    gpio.output(23,False)
    gpio.output(24,False)
    time.sleep(tf)
    gpio.cleanup()

def leftback(tf):
    init()
    gpio.output(17,True)
    gpio.output(22,False)
    gpio.output(23,False)
    gpio.output(24,False)
    time.sleep(tf)
    gpio.cleanup()

def rightback(tf):
    init()
    gpio.output(17,False)
    gpio.output(22,False)
    gpio.output(23,True)
    gpio.output(24,False)
    time.sleep(tf)
    gpio.cleanup()

def spinleft(tf):
    init()
    gpio.output(17,True)
    gpio.output(22,False)
    gpio.output(23,False)
    gpio.output(24,True)
    time.sleep(tf)
    gpio.cleanup()


def spinright(tf):
    init()
    gpio.output(17,False)
    gpio.output(22,True)
    gpio.output(23,True)
    gpio.output(24,False)
    time.sleep(tf)
    gpio.cleanup()




forward(2)
reverse(2)
leftfor(2)
leftback(2)
rightfor(2)
rightback(2)
spinleft(2)
spinright(2)

#test(2)
