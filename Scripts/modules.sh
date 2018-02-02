#!/bin/bash
for file in $( ls /powershell/PowerCLI-Example-Scripts/Modules/ )
do
    $dir = "/root/.local/share/powershell/Modules/${file%.*}/"
    if [[ ! -e $dir ]]; then
        mkdir $dir
    fi
    mv "/powershell/PowerCLI-Example-Scripts/Modules/$file" "/root/.local/share/powershell/Modules/${file%.*}/$file"
done
