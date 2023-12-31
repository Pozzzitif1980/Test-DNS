#!/bin/bash

rm results.csv

# sudo systemctl restart  (вказати налаштований DNS resolver) 


csv_file="results.csv"

    result=$(./test.sh)
    echo "$result" >> "$csv_file"

average_time=0

count=0

while IFS=$'\t' read -r domain_name time; do

    if [[ "$time" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
        average_time=$(echo "$average_time + $time" | bc)
        count=$((count + 1))
    fi
done < "$csv_file"

if [ "$count" -gt 0 ]; then
    average_time=$(echo "scale=2; $average_time / $count" | bc)
fi

echo "Середнє значення: $average_time ms"

printf "Domain Name\t\t\tAverage Time (ms)\n"

cat results.csv
