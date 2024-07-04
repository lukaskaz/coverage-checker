#!/bin/bash

SCRIPTTORUN=./check-coverage.sh
RETCODE=1

if [ -f "$SCRIPT" ]; then
	$SCRIPTTORUN
	RETCODE=$?
else
	echo "Script: '$SCRIPTTORUN' is invalid"
fi

exit $RETCODE

