#!/bin/bash

files="*.mp3"
regex="([0-9]+)\s-\s([0-9]+).\s(.+).mp3"
delim="-----------------"
for f in $files
do
	echo "$delim"
	# use bash built-in regex match operator
	if [[ $f =~ $regex ]]
	then
		echo "parsed $f. extracted info from filename:"
		name="${BASH_REMATCH[3]}"
		track_num="${BASH_REMATCH[2]}"
		echo "name: $name"
		echo "track number: $track_num"
		# redirect stdout to /dev/null to disable output
		# errors will still print to stderr
		eyeD3 -t "$name" -n "$track_num" "$f" > /dev/null
	else
		# print to stderr
		echo "$f does not match regexp" >&2
	fi
done
