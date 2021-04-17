@echo off
cd %USERPROFILE%\AppData\Local\WebGrab+Plus
C:
del "WebGrab++.config.xml"
copy G:\git-working\epg\webgrab-configs\mytv.config.xml "WebGrab++.config.xml"
Run.lnk
del G:\git-working\epg\mytv.xml /Q
cd G:\git-working\epg
G:
copy "%USERPROFILE%\AppData\Local\WebGrab+Plus\mytv.xml" G:\git-working\epg\mytv.xml
fart mytv.xml "(n)</desc>" "</desc>"
tar -czvf compressed\mytv.xml.gz mytv.xml
git add mytv.xml compressed/mytv.xml.gz
git commit -m "MYTV Broadcasting EPG from %date:~4,11% (7 Days) Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% MYT"
git push
del 7d.txt /Q
echo Generated successfully.
echo Website: Various
echo Name: MYTV Broadcasting
echo MYTV Broadcasting EPG from %date:~4,11% (7 Days) Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% MYT