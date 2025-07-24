# install supervisor
sudo apt-get install supervisor

# create symbolic links between repo file and supervisor config
sudo ln -sf /var/www/srot-devops/supervisor/hospitality.conf /etc/supervisor/conf.d/hospitality.conf
sudo ln -sf /var/www/srot-devops/supervisor/accounting.conf /etc/supervisor/conf.d/accounting.conf
sudo ln -sf /var/www/srot-devops/supervisor/integration.conf /etc/supervisor/conf.d/integration.conf