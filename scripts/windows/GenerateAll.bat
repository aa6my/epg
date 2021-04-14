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
tar -czvf compressed\astro.xml.gz astro.xml
git add astro.xml compressed/astro.xml.gz
git commit -m "Astro EPG from %date:~4,11% (7 Days) Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% MYT"
git push
del 7d.txt /Q
echo Generated successfully.
echo Website: astro.com.my
echo Name: Astro
echo Astro EPG from %date:~4,11% (7 Days) Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% MYT
cd %USERPROFILE%\AppData\Local\WebGrab+Plus
C:
del "WebGrab++.config.xml"
copy G:\git-working\epg\webgrab-configs\unifitv.config.xml "WebGrab++.config.xml"
Run.lnk
del G:\git-working\epg\unifitv.xml /Q
cd G:\git-working\epg
G:
copy "%USERPROFILE%\AppData\Local\WebGrab+Plus\unifitv.xml" G:\git-working\epg\unifitv.xml
tar -czvf compressed\unifitv.xml.gz unifitv.xml
git add unifitv.xml compressed/unifitv.xml.gz
git commit -m "unifi TV EPG from %date:~4,11% (7 Days) Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% MYT"
git push
del 7d.txt /Q
echo Generated successfully.
echo Website: Various
echo Name: unifi TV
echo unifitv EPG from %date:~4,11% (7 Days) Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% MYT
cd %USERPROFILE%\AppData\Local\WebGrab+Plus
C:
del "WebGrab++.config.xml"
copy G:\git-working\epg\webgrab-configs\rtmklik.config.xml "WebGrab++.config.xml"
Run.lnk
del G:\git-working\epg\rtmklik.xml /Q
cd G:\git-working\epg
G:
copy "%USERPROFILE%\AppData\Local\WebGrab+Plus\rtmklik.xml" G:\git-working\epg\rtmklik.xml
tar -czvf compressed\rtmklik.xml.gz rtmklik.xml
git add rtmklik.xml compressed/rtmklik.xml.gz
git commit -m "rtmklik EPG from %date:~4,11% (7 Days) Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% MYT"
git push
del 7d.txt /Q
echo Generated successfully.
echo Website: rtmklik.rtm.gov.my
echo Name: rtmklik
echo rtmklik EPG from %date:~4,11% (7 Days) Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% MYT
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
tar -czvf compressed\mytv.xml.gz mytv.xml
git add mytv.xml compressed/mytv.xml.gz
git commit -m "MYTV Broadcasting EPG from %date:~4,11% (7 Days) Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% MYT"
git push
del 7d.txt /Q
echo Generated successfully.
echo Website: Various
echo Name: MYTV Broadcasting
echo MYTV Broadcasting EPG from %date:~4,11% (7 Days) Generated at %date:~4,11% %date:~0,3% %time:~0,2%:%time:~3,2%:%time:~6,2% MYT