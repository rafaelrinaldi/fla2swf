#!/bin/bash

#
# Publish a list of FLA files in a batch.
#
# author: Rafael Rinaldi (rafaelrinaldi.com)
# since: Jul 31, 2012
# license: WTFPL

usage() {
	echo "
You can pass a folder or a list of files to be published:

sh publish_all.sh folder/
sh publish_all.sh folder/foo.fla folder/bar.fla
"
}

if [[ $@ == "" ]]; then
	usage
	exit
fi

# Documents to be opened.
documents=$@

# Open all Flash files of given path.
if [[ -d $documents ]]; then
	open $documents/*.fla
else
  open $documents
fi

# Executing JSFL script.
open publish_all.jsfl