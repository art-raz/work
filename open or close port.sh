#!/bin/bash

#Проверить открыт/закрыт порт

#sudo snap install nmap

read -p "Введите порт: " PORT_NUMBER

OUTPUT="$(nmap localhost | grep "$PORT_NUMBER" | awk '{ print $2 }')"

if [[ ${OUTPUT} = 'open' ]]; then
    echo -e "\033[32mopen\033[0m"
else 
    echo -e "\033[31mNot found or close\033[0m"
fi