#!/vendor/bin/sh
if [ "$#" -ne 3 ]; then
    echo 0
    exit 1
fi

if [ "$1" -eq 1 ]; then
    mic=1
elif [ "$1" -eq 2 ]; then
    mic=3
elif [ "$1" -eq 3 ]; then
    mic=4
fi

AudioRoutingTest 17 "$mic" "$2" "$3"
