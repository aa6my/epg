cd /home/pi/.wg++
cp /home/pi/.wg++/deploy/webgrab-configs/astro.config.xml WebGrab++.config.xml
sudo ./run.sh
mv guide.xml /home/pi/Desktop/guide.xml

echo "The XML file is now located on your desktop."
echo "Modify this file by editing it - change the file path at mv /home/pi/Desktop to your desired file path."
