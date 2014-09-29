@echo off

:: password for encryption
set passwd=mySillyPassword
:: where to backup
set pathto=c:\Google Drive\backup\
:: backup filename
set fname=mybak
:: what to backup
set btarget=z:\mybak\


del "%pathto%%fname%.7z.enc"
c:\mybackupr\7za.exe a -t7z "%pathto%%fname%.7z" "%btarget%"


c:\OpenSSL-Win32\bin\openssl enc -bf-cbc -salt -in "%pathto%%fname%.7z" -out "%pathto%%fname%.7z.enc" -pass pass:%passwd%
del "%pathto%%fname%.7z"