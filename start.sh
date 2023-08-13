#!/bin/sh
echo "Загрузка файла прокси..."
curl -o proxies.txt https://raw.githubusercontent.com/TheSpeedX/PROXY-List/master/socks4.txt
echo "Файл прокси успешно загружен."

read -p "Введите айпи: " ip
read -p "Введите протокол: " protocol
read -p "Введите метод: " method
read -p "Введите время: " seconds
read -p "Введите CPS: " cps

java -jar MCBOT.jar "$ip" "$protocol" "$method" "$seconds" "$cps"