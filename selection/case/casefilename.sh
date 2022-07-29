#!/bin/bash
for filename in $(ls)
do
	ext=${filename##*\.}
	case "$ext" in
		java) 	echo "$filename : Java source file"
			;;
		pdf)    echo "$filename : Portable Document Format file"
                        ;;
		o) 	echo "$filename : Object file"
			;;
		sh) 	echo "$filename : Shell file"
                        ;;		
		txt) 	echo "$filename : Text file"
                        ;;
		csv)	echo "$filename : Comma Separated VAlues file"
			;;
		*) 	echo "$filename : Not processed"
                        ;;
	esac
done
#casefilename.sh (END)
