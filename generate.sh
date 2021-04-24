#!/bin/bash
# 20210519 - Aleks script

#if [ ! -t 0 ]; then notify-send -u critical "Script must be run in a terminal - exiting !!!"; exit 1; fi    # Not in a terminal

cleverecho="/bin/echo -e -n"

$cleverecho "Please Enter Security Key: "
read securitykey

if [ "$securitykey" = "test12345" ]
   then
      $cleverecho "Key Confirmed.... ";sleep 1
            $cleverecho "Loading Script ...";sleep 1
            $cleverecho " ...\n"
	    $cleverecho "Generating Git Security Token ... ";sleep 1
	    $cleverecho "... ";sleep 1;
	    $cleverecho "... ";sleep 1

cat <<EOF >> $HOME/.github_key
https://15ef68d3aa8cb4cd6e17f95d966abfe98434ae78:x-oauth-basic@github.com/aleksd2000
EOF

   else
            $cleverecho "UX:ERROR:Invalid Security Key!"
            exit;
fi
