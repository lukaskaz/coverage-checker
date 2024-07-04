#!/bin/bash

INSTALLDIR=$1
SCRIPTTOINSTALL=check-coverage.sh
RETCODE=1

if [ -n "$INSTALLDIR" -a -d "$INSTALLDIR" ]; then
	cp $SCRIPTTOINSTALL $INSTALLDIR
	RETCODE=$?
else
	echo "Install directory: '$INSTALLDIR' is invalid"
fi

exit $RETCODE
