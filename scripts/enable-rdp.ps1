# http://stackoverflow.com/a/9949105
$ErrorActionPreference = "Stop"

# http://networkerslog.blogspot.com.br/2013/09/how-to-enable-remote-desktop-remotely.html
set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server'-name "fDenyTSConnections" -Value 0
# http://kb.mit.edu/confluence/display/istcontrib/Establishing+an+RDP+connection+with+a+Windows+8.1+client+from+Mac+OS+X
set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services' -name "SecurityLayer" -Value 0
set-ItemProperty -Path 'HKLM:\SOFTWARE\Policies\Microsoft\Windows NT\Terminal Services'  -name "UserAuthentication" -Value 0 
set-ItemProperty -Path 'HKLM:\System\CurrentControlSet\Control\Terminal Server\WinStations\RDP-Tcp' -name "UserAuthentication" -Value 1 


Enable-NetFirewallRule -DisplayGroup "Remote Desktop"
