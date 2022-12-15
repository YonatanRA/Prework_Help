# 1. Instalando Xcode y Homebrew 
xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew update
say -v Monica "bru instalado"

# 2. Instalando Git
brew install git
say -v Monica "guit instalado"

# 3. Visual Studio Code
brew install --cask visual-studio-code
say -v Monica "estudio coud instalado"

# 4. Python & Jupyter
brew install python3

pip3 install --upgrade --user pip

pip3 install jupyter notebook
say -v Monica "paizon y yupiter instalados"

# 5. Anaconda/MiniConda
brew install --cask miniconda
say -v Monica "miniconda instalado"

# 6. MySQL
brew install mysql
mysql.server start
launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.mysql.plist
say -v Monica "maiesekuele instalado"

# password será el nuevo password
mysql -u root -p 
USE mysql;
ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'password';
FLUSH PRIVILEGES;
QUIT;
say -v Monica "pasguord maiesekuele cambiado"

# 7. Workbench
brew install --cask mysqlworkbench
say -v Monica "Workbench instalado"

# 8. DBeaver
brew install --cask dbeaver-community
say -v Monica "D biber instalado"

# 9. MongoDB
brew install mongodb-community@6.0
brew services start mongodb-community@6.0
say -v Monica "Mongo instalado"

# 10. Compass
brew install --cask mongodb-compass
say -v Monica "cómpas instalado"

# 11. Microsoft Excel
brew install --cask microsoft-excel
say -v Monica "excel instalado"


# 12. Tableau
brew install --cask tableau-public
say -v Monica "tabló instalado"


# 13 VirtualBox / UTM
brew install --cask virtualbox
say -v Monica "virtualbox instalado"

brew install --cask utm
say -v Monica "utm instalado"


# 14. Slack/Zoom
brew install --cask slack
say -v Monica "eslac instalado"
brew install --cask zoomus
say -v Monica "zum instalado"

