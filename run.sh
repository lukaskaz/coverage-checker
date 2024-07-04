#!/bin/bash

BUILDDIR=$1
SCRIPTTORUN=check-coverage.sh
RETCODE=1

if [ -n "$BUILDDIR" -a -d "$BUILDDIR" ]; then
	./$SCRIPTTORUN $BUILDDIR
	RETCODE=$?
else
	echo "Script to run: '$SCRIPTTORUN' is invalid"
fi

exit $RETCODE
