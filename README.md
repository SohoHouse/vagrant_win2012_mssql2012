###  To run a MSSQL instance in a local vagrant box

Install Vagrant from [Vagrant](https://www.vagrantup.com/downloads.html)

Download the latest Mac RDP client from [App Store](https://itunes.apple.com/gb/app/microsoft-remote-desktop/id715768417?mt=12)

Download the following files:

SQLFULL_architecture_language_Lang.box
SQLFULL_architecture_language_Install.exe
SQLFULL_architecture_language_Core.box

from [MS](https://www.microsoft.com/en-gb/download/details.aspx?id=29066)

(There pretty big, or use copies from the [local share](smb://192.168.0.8/Data/Marketing/Developers/software/MSSQL2012_x64_180_day_eval) )

Clone the [repo](git@github.com:SohoHouse/vagrant_win2012_mssql2012.git)

Add a directory MSSQL2012_x64_180_day_eval with the three install files

run 
```
vagrant up
```

run 
```
vagrant rdp -- /span
```

and connect with password vagrant
