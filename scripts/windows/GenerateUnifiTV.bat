@echo off
cd %USERPROFILE%\AppData\Local\WebGrab+Plus
C:
del "WebGrab++.config.xml"
copy G:\git-working\epg\webgrab-configs\unifitv.config.xml "WebGrab++.config.xml"
Run.lnk
del G:\git-working\epg\unifitv.xml /Q
cd G:\git-working\epg
G:
copy "%USERPROFILE%\AppData\Local\WebGrab+Plus\unifitv.xml" G:\git-working\epg\unifitv.xml
fart unifitv.xml "(n)</desc>" "</desc>"
tar -czvf compressed\unifitv.xml.gz unifitv.xml
git add unifitv.xml compressed/unifitv.xml.gz
git commit -m "unifi TV EPG from %date:~4,11% (7 Days) Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% MYT"
git push
del 7d.txt /Q
echo Generated successfully.
echo Website: Various
echo Name: unifi TV
echo unifitv EPG from %date:~4,11% (7 Days) Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% MYT