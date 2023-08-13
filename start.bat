@echo off
chcp 65001 > nul 2>&1
echo Загрузка файла прокси...
curl -o proxies.txt https://raw.githubusercontent.com/TheSpeedX/PROXY-List/master/socks4.txt
echo Файл прокси успешно загружен.

set /p ip=Введите айпи: 
set /p protocol=Введите протокол: 
set /p method=Введите метод: 
set /p secounds=Введите время: 
set /p cps=Введите CPS: 

java -jar MCBOT.jar %ip% %protocol% %method% %secounds% %cps%