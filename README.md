# bash_scripts
Repository to save useful bash scripts

## battery_logger.sh
This script allows to track changes in battery charge level with time. It creates (if needed) folder named 'power_logs' together with file named as current date in directory where script was called. Then it appends line to file with information about current time and battery percantage


To execute program periodically run it with `watch` tool:
`watch -n [time interval in seconds] ./battery_logger.sh`

## extract_tags_info_from_filename.sh 
This script extracts information from the song filename and saves it to id3 tags. It uses `eyeD3` utility to manipulate with song tags. So you need to install that package: `sudo apt install eyed3`


Currently script extracts
* song name
* track number
* disc number

It accepts filenames in the next format: `01 - 02. Another One Bites The Dust.mp3` where `01` stands for disc number and `02` stands for track number. But it can be easily changed. Simply edit the regular expression in the script to match your filenames
