#!/bin/bash

PHP_BINARY="php"
DIR=""

while getopts "p:d:" OPTION 2> /dev/null; do
	case ${OPTION} in
		p)
			PHP_BINARY="$OPTARG"
			;;
		d)
		    DIR="$OPTARG"
		    ;;
	esac
done

if [ "$DIR" == "" ]; then
    echo No directory specified
    exit 1
fi

echo Running preprocessor on \"$DIR\"...

"$PHP_BINARY" tests/preprocessor/PreProcessor.php --path "$DIR"

if [ $? -ne 0 ]; then
	echo Failed to apply preprocessor macros!
	exit 1
fi

echo Running code optimizer on \"$DIR\"...

"$PHP_BINARY" tests/preprocessor/CodeOptimizer.php --path "$DIR"

if [ $? -ne 0 ]; then
	echo Failed to apply preprocessor code optimizations!
	exit 1
fi

echo Code optimizer and preprocessor modifications applied successfully.