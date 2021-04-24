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
	    $cleverecho "... \n";sleep 1

cat <<EOF >> $HOME/.github_key
https://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:x-oauth-basic@github.com/aleksd2000
EOF

cat <<EOF >> $PWD/.git/config
[core]
	repositoryformatversion = 0
	filemode = true
	bare = false
	logallrefupdates = true
[remote "origin"]
	url = https://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:x-oauth-basic@github.com/aleksd2000/public
	fetch = +refs/heads/*:refs/remotes/origin/*
[branch "main"]
	remote = origin
	merge = refs/heads/main
EOF
   else
            $cleverecho "UX:ERROR:Invalid Security Key!"
            exit;
fi
