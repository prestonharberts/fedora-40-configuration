#!/bin/bash

proc=`pidof tresorit tresorit-daemon syncthing`
kill $proc
