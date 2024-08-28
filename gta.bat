@echo off
setlocal enabledelayedexpansion

rem Kullanıcıları oluştur
for /l %%i in (1,1,5) do (
    set "username=user!random!"
    set "password=pass!random!"

    rem Kullanıcı adını ve şifreyi kısalt
    set "username=!username:~0,8!"
    set "password=!password:~0,8!"

    rem Kullanıcı oluştur
    net user !username! !password! /add

    echo Kullanıcı !username! oluşturuldu.
)

echo Tüm kullanıcılar başarıyla oluşturuldu.

rem Oturumu kapat
shutdown /l