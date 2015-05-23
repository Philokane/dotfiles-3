# Install the latest stable nave the node.js environment switcher Node.js
curl -fsSL https://raw.github.com/isaacs/nave/master/nave.sh > /usr/local/bin/nave && chmod ugo+x /usr/local/bin/nave

# Install a global node.js
nave usemain stable

# Install global deps
npm install -g jshint
npm install -g grunt
npm install -g gulp
