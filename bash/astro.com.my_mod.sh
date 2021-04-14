# Add modified site.ini for astro.com.my (Linux)
# Clone weareblahs/epg repository (this is where the modified SiteIni comes from)
git clone https://github.com/weareblahs/epg
# Copying modified SiteIni from repository to WebGrab directory
cp epg/modified-site-ini/astro.com.my.ini ~/.wg++/siteini.pack/Malaysia/astro.com.my.ini
# Delete the repository from your computer
# rm -rf epg/*