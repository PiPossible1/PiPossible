import RPi.GPIO as GPIO


class LichtManager:
    def __init__(self):
        gpio.setmode(gpio.BCM)
        gpio.setup(20, gpio.OUT)
        gpio.setup(21, gpio.OUT)

    def lAus(self):
        LichtManager.__offIn1()
        LichtManager.__offIn2()

    def lOn(self):
        LichtManager.__onIn1()
        LichtManager.__onIn2()

    def linksOn(self):
        LichtManager.__onIn1()
        LichtManager.__offIn2()

    def rechtsOn(self):
        LichtManager.__offIn1()
        LichtManager.__onIn2()

    def __onIn1(self):
        GPIO.output(21, True)
        print("In1 on")

    def __onIn2(self):
        GPIO.output(20, True)
        print("In2 on")

    def __offIn1(self):
        GPIO.output(21, False)
        print("In1 off")

    def __offIn2(self):
        GPIO.output(20, False)
        print("In2 off")


LichtManager.__init__(LichtManager)
LichtManager.linksOn()
LichtManager.rechtsOn()
LichtManager.lAus()
LichtManager.lOn()
LichtManager.lAus()
