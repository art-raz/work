#!/bin/bash

clear

echo "Ипотечный калькулятор"
read -p "Введите стоимость: " stoimost
read -p "Введите взнос: " vznos
read -p "Введите ставку: " stavka
read -p "Введите срок: " srok

pl=$(bc<<<"scale=33;$stoimost-$vznos")
pl1=$(bc<<<"scale=33;$stavka/12/100")
pl2=$(bc<<<"scale=33;1+$pl1")
pl3=$(bc<<<"scale=33;-1*$srok*12")
pl4=$(bc<<<"scale=33;$pl2^$pl3")
pl5=$(bc<<<"scale=33;1-$pl4")
pl6=$(bc<<<"scale=33;$pl*$pl1")
pl7=$(bc<<<"scale=2;$pl6/$pl5")

echo "Ваш платеж составит: $pl7"