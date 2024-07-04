#!/bin/bash

SCRIPTTORUN=check-coverage.sh
RETCODE=1

if [ -n "$SCRIPTTORUN" -a -f "$SCRIPTTORUN" ]; then
	./$SCRIPTTORUN
	RETCODE=$?
else
	echo "Script to run: '$SCRIPTTORUN' is invalid"
fi

exit $RETCODE

