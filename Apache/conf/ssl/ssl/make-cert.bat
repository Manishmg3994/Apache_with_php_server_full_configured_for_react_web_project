cd C:\Apache24\conf\ssl\ssl
@echo off
set /p domain="Enter Domain: "
set OPENSSL_CONF=../conf/openssl.cnf

if not exist .\%domain% mkdir .\%domain%

openssl req -config cert.conf -new -sha256 -newkey rsa:2048 -nodes -keyout server.key -x509 -days 3650 -out server.crt

echo.
echo -----
echo The certificate was provided.
echo.
pause