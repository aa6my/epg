@echo off
cd %USERPROFILE%\AppData\Local\WebGrab+Plus
C:
del "WebGrab++.config.xml"
copy G:\git-working\epg\webgrab-configs\astro.config.xml "WebGrab++.config.xml"
Run.lnk
del G:\git-working\epg\astro.xml /Q
cd G:\git-working\epg
G:
copy "%USERPROFILE%\AppData\Local\WebGrab+Plus\astro.xml" G:\git-working\epg\astro.xml
git add astro.xml
git commit -m "Astro EPG from %date:~4,11% (7 Days) Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% MYT"
git push
del 7d.txt /Q
echo Generated successfully.
echo Website: astro.com.my
echo Name: Astro
echo Astro EPG from %date:~4,11% (7 Days) Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% MYT