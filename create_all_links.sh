#!/bin/bash
cd "$(dirname "${0}")"

cat *.links | sort -u | grep '^/' | while read file
do
    link="$(ls -l "${file}" | sed 's/.* -> //')"
    echo "sudo ln -s '${link}' '${file}'"
done
