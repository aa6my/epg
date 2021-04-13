# Commit Description Formatting
current_date=`date '+%d-%m-%C%y'`
exp_date=`date '+%d-%m-%C%y' -d "$end_date+7 days"`

cd /home/pi/.wg++
cp /home/pi/.wg++/deploy/webgrab-configs/rtmklik.config.xml WebGrab++.config.xml
sudo ./run.sh
mv guide.xml /home/pi/.wg++/deploy/rtmklik.xml
rm -rf WebGrab++.config.xml
# Push rtmklik.com.my.xml into Github
cd deploy
git add rtmklik.xml
ts1=`date`
git commit -m "rtmklik EPG ($current_date - $exp_date / Automatically generated at $ts1)"
git push epg master

echo "XML generation for rtmklik.rtm.gov.my successful."
