::Windows Global Variables
@echo off
::Set Variables (Admin required!)
del 7d.txt /Q
dateadd_mod 7
set /p 7dtext= <7d.txt
:: Start generating EPG for rtmklik
:: Changing the directory from external HDD to Local Disk
cd %USERPROFILE%\AppData\Local\WebGrab+Plus
C:
:: Copying config files from EHDD to WebGrab Directory
del "WebGrab++.config.xml"
copy G:\git-working\epg\webgrab-configs\rtmklik.config.xml "WebGrab++.config.xml"
:: Start Generating
Run.lnk
:: Post-generation action
:::: Delete original rtmklik.xml
del G:\git-working\epg\rtmklik.xml /Q
:::: Change Local Disk to EHDD
:::: Copy generated rtmklik.xml to git directory
copy "%USERPROFILE%\AppData\Local\WebGrab+Plus\rtmklik.xml" rtmklik.xml
:: Push into repository
git add rtmklik.xml
git commit -m "rtmklik EPG from %date:~4,11% to %7dtext%/ Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% MYT"
git push
echo "Generated successfully."
echo "Website: rtmklik.rtm.gov.my"
echo "Name: rtmklik"
echo "Commit Name: rtmklik EPG from %date:~4,11% to %7dtext%/ Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% MYT