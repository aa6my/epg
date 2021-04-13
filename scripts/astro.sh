# Commit Description Formatting
current_date=`date '+%d-%m-%C%y'`
exp_date=`date '+%d-%m-%C%y' -d "$end_date+7 days"`

# Generate astro.com.my
cd /home/pi/.wg++
cp /home/pi/.wg++/deploy/webgrab-configs/astro.config.xml WebGrab++.config.xml
sudo ./run.sh
mv guide.xml /home/pi/.wg++/commit/astro.xml
rm -rf WebGrab++.config.xml
# Push astro.com.my.xml into Github
cd ~/.wg++/deploy/
git config user.email "tanyuxuan2005@gmail.com"
git config user.name "pi@raspberrypi"
git add .
ts1=`date`
git commit -m "Astro EPG ($current_date - $exp_date / Automatically generated at $ts1)"
git push epg master
echo "XML generation for astro.com.my successful."
