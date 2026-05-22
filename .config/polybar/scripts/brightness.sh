#!/bin/bash

# Acción: + o -
action=$1
step=10  # porcentaje que quieres subir/bajar

if [ "$action" = "up" ]; then
    brightnessctl set +${step}%
elif [ "$action" = "down" ]; then
    brightnessctl set ${step}%-
fi

# Imprimir porcentaje lineal 0-100 para Polybar
current=$(brightnessctl g)
max=$(brightnessctl m)
percent=$(( current * 100 / max ))
echo $percent > /tmp/brightness_level

