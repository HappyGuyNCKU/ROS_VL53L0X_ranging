#!/bin/bash

check28=$(i2cdetect -y 1 | grep "28")

check29=$(i2cdetect -y 1 | grep "29")

if [ "${check28}" == "" ]; then
	echo "I2C address 28 not found"
else
	if [ "${check29}" == "" ]; then
		echo "I2C address 29 not found"
	else
		bin/test 0x29
		bin/test 0x28
	fi
fi

