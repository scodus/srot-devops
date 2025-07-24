# install lighttpd for static file serving

sudo apt install lighttpd

# edit server.port from 80 -> 8081
sudo nano /etc/lighttpd/lighttpd.conf

# add second config for second frontend 
sudo cp /etc/lighttpd/lighttpd.conf /etc/lighttpd/lighttpd-hospitality-front.conf
sudo cp /etc/lighttpd/lighttpd.conf /etc/lighttpd/lighttpd-hospitality-admin.conf
sudo cp /etc/lighttpd/lighttpd.conf /etc/lighttpd/lighttpd-accounting-admin.conf
sudo cp /etc/lighttpd/lighttpd.conf /etc/lighttpd/lighttpd-accounting-front.conf
sudo cp /etc/lighttpd/lighttpd.conf /etc/lighttpd/lighttpd-retail-front.conf


