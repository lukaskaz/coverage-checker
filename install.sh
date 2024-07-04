#!/bin/bash

INSTALLDIR=$1
SCRIPT=check-coverage.sh

if [ -n "$INSTALLDIR" -a -d "$INSTALLDIR" ]; then
	cp $SCRIPT $INSTALLDIR
	exit $?
else
	echo "Install dir: '$INSTALLDIR' is invalid"
fi
exit 1

