# update en installeer benodigde software
sudo apt-get update
sudo apt-get -y install build-essential libssl-dev git

# Voeg de repo van NodeSource
curl -sL https://deb.nodesource.com/setup_5.x | sudo -E bash -
sudo apt-get install -y nodejs

# Make sure npm is the latest version
sudo npm install -g npm

# Install forever to run our node application headless
sudo npm install -g forever

# Copy our Upstart script forever.conf to the right location and update its permissions
sudo cp /home/vagrant/forever.conf /etc/init/forever.conf

# Set correct permissions, user and user group on forever.conf
sudo chmod 644 /etc/init/forever.conf
sudo chown root:root /etc/init/forever.conf

# Navigate to our application directory
cd /home/vagrant/app

# Install the required node packages
npm install

# Start forever and watch for file changes
forever start index.js --watch
