@echo off

:: password for encryption
set passwd=mySillyPassword
:: what to decrypt
set mywhat=mybak.7z.enc
:: where to backup
set mywhere=mybak.7z

c:\OpenSSL-Win32\bin\openssl enc -d -bf-cbc -in "%mywhat%" -out "%mywhere%" -pass pass:%passwd%