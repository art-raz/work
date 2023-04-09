#!/bin/bash

#Проверить открыт/закрыт порт

#sudo snap install nmap

read -p "Введите порт: " PORT_NUMBER

nmap localhost | grep "$PORT_NUMBER" | awk '{ print $2,$3 }' | column -t