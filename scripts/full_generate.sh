# Commit Description Formatting
current_date=`date '+%d-%m-%C%y'`
exp_date=`date '+%d-%m-%C%y' -d "$end_date+7 days"`

# Generate Astro EPG
cd /home/pi/.wg++
cp /home/pi/.wg++/deploy/webgrab-configs/astro.config.xml WebGrab++.config.xml
sudo ./run.sh
mv guide.xml /home/pi/.wg++/commit/astro.xml
rm -rf WebGrab++.config.xml
# Push astro.xml into Github
cd ~/.wg++/deploy/
git config user.email "tanyuxuan2005@gmail.com"
git config user.name "pi@raspberrypi"
git add .
ts1=`date`
git commit -m "Astro EPG ($current_date - $exp_date / Automatically generated at $ts1)"
git push epg master
echo "XML generation for astro.com.my successful."

# Generate unifi TV EPG
cd /home/pi/.wg++
cp /home/pi/.wg++/deploy/webgrab-configs/unifitv.config.xml WebGrab++.config.xml
sudo ./run.sh
mv guide.xml /home/pi/.wg++/commit/unifitv.xml
rm -rf WebGrab++.config.xml
# Push unifitv.xml into Github
cd ~/.wg++/deploy/
git config user.email "tanyuxuan2005@gmail.com"
git config user.name "pi@raspberrypi"
git add .
ts2=`date`
git commit -m "unifi TV EPG ($current_date - $exp_date / Automatically generated at $ts2)"
git push epg master
echo "XML generation for unifi TV successful."

# Generate RTM Klik EPG
cd /home/pi/.wg++
cp /home/pi/.wg++/deploy/webgrab-configs/rtmklik.config.xml WebGrab++.config.xml
sudo ./run.sh
mv guide.xml /home/pi/.wg++/deploy/rtmklik.xml
rm -rf WebGrab++.config.xml
# Push rtmklik.xml into Github
cd /home/pi/.wg++/deploy
git config user.email "tanyuxuan2005@gmail.com"
git config user.name "pi@raspberrypi"
git add .
ts3=`date`
git commit -m "RTM Klik EPG ($current_date - $exp_date / Automatically generated at $ts3)"
git push epg master
echo "XML generation for rtmklik.rtm.gov.my successful."

# Generate RTM Klik EPG
cd /home/pi/.wg++
cp /home/pi/.wg++/deploy/webgrab-configs/mytv.config.xml WebGrab++.config.xml
sudo ./run.sh
mv guide.xml /home/pi/.wg++/deploy/mytv.xml
rm -rf WebGrab++.config.xml
# Push mytv.xml into Github
cd /home/pi/.wg++/deploy
git config user.email "tanyuxuan2005@gmail.com"
git config user.name "pi@raspberrypi"
git add .
ts4=`date`
git commit -m "MYTV Broadcasting EPG ($current_date - $exp_date / Automatically generated at $ts4)"
git push epg master
echo "XML generation for MYTV Broadcasting successful."

# Final Confirmation
echo "Generating completed."
echo "EPG valid from $current_date to $exp_date"
