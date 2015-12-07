@echo off

echo Installing Microsoft® SQL Server® 2012 Evaluation....

C:\vagrant\MSSQL2012_x64_180_day_eval\SQLFULL_x64_ENU_Install.exe

echo "Created installer..."

C:\vagrant\MSSQL2012_x64_180_day_eval\SQLFULL_x64_ENU_Install.exe 

C:\vagrant\MSSQL2012_x64_180_day_eval\SQLFULL_x64_ENU\SETUP.EXE /IACCEPTSQLSERVERLICENSETERMS /CONFIGURATIONFILE="c:\vagrant\scripts\ConfigurationFile.ini"

echo Done!

echo Disabling firewall
netsh advfirewall set allprofiles state off
