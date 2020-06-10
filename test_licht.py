import unittest
from unittest import TestCase
from unittest.mock import patch, call
import licht3


@patch("RPi.GPIO.output", autospec=True)
class TestLichtManager(TestCase):
    in1Pin = 20
    in2Pin = 21

    def test__init__(self, mock_output):
        """If you would MoterManager() stop motor when you build it your test looks like follow code"""
        mm = licht3.LichtManager(self.in1Pin, self.in1Pin)
        mock_output.assert_has_calls([call(self.in1Pin, False), call(self.in2Pin, False)], any_order=True)

    def test_lAus(self, mock_output):
        mm = licht3.LichtManager(self.in1Pin, self.in1Pin)
        mock_output.reset_mock
        mm.lAus()
        mock_output.assert_has_calls([call(self.in1Pin, False), call(self.in2Pin, False)], any_order=True)

    def test_lOn(self, mock_output):
        mm = licht3.LichtManager(self.in1Pin, self.in1Pin)
        mock_output.reset_mock
        mm.lAus()
        mock_output.assert_has_calls([call(self.in1Pin, True), call(self.in2Pin, True)], any_order=True)

    def test_linksOn(self, mock_output):
        mm = licht3.LichtManager(self.in1Pin, self.in1Pin)
        mock_output.reset_mock
        mm.lAus()
        mock_output.assert_has_calls([call(self.in1Pin, True), call(self.in2Pin, False)], any_order=True)

    def test_rechtsOn(self, mock_output):
        mm = licht3.LichtManager(self.in1Pin, self.in1Pin)
        mock_output.reset_mock
        mm.lAus()
        mock_output.assert_has_calls([call(self.in1Pin, False), call(self.in2Pin, True)], any_order=True)
