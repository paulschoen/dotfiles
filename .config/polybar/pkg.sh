#!/bin/bash

pac=$(checkupdates | wc -l)
aur=$(($(cower -u | wc -l)-1))

check=$((pac + aur))
if [[ "$check" != "0" ]]
then
    echo "$pac %{F#CACAC8}%{F-} $aur"
else
	echo "%{F#CACAC8}%{F-}"
fi
