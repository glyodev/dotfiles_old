#!/bin/bash
echo $(( $(brightnessctl g) * 100 / $(brightnessctl m) ))
