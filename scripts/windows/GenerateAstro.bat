::Windows Global Variables
@echo off
::Set Variables (Admin required!)
dateadd_mod 7
set /p 7dtext= <7d.txt

:: Start generating EPG for Astro
:: Changing the directory from external HDD to Local Disk
cd %USERPROFILE%\AppData\Local\WebGrab+Plus
C:
:: Copying config files from EHDD to WebGrab Directory
del "WebGrab++.config.xml"
copy G:\git-working\epg\webgrab-configs\astro.config.xml "WebGrab++.config.xml"
:: Start Generating
Run.lnk
:: Post-generation action
:::: Delete original astro.xml
del G:\git-working\epg\astro.xml /Q
:::: Change Local Disk to EHDD
:::: Copy generated astro.xml to git directory
copy "%USERPROFILE%\AppData\Local\WebGrab+Plus\astro.xml" astro.xml
:: Push into repository
git add astro.xml
git commit -m "Astro EPG from %date:~4,11% to %7dtext%/ Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% MYT"
git push
echo "Generated successfully."
echo "Website: astro.com.my"
echo "Name: Astro"
echo "Commit Name: Astro EPG from %date:~4,11% to %7dtext%/ Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% MYT