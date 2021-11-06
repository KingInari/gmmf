      Install and Verify:
uncomment these lines the first time you run the script
sudo apt-get install jq -y
sudo pip install youtube-dl -y 
      
      Change Playlist:
You can change the playlist with one of your choice by replacing the url in quotations in the youtube-dl line

      Scheduling With Cron: 
run "sudo crontab -e"
add (MAILTO="") at the beggining of the file
at the bottom add (* * * * * export DISPLAY=:0.0 && (directory you placedthe file in)/gmmf.sh 
replace the asterisks with the minutes, hours, day of month, month, and day of week you wish to run the script
MAKE SURE THERE IS A BLANK LINE AFTER YOUR LINE OR CRON WILL NOT EXECUTE
save changes and exit
