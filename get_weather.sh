#!/bin/bash

echo "starting process";

for year in {2020..2022};
do 
	echo "downloading data for year ${year}"
	wget -q --content-disposition "https://climate.weather.gc.ca/climate_data/bulk_data_e.html?format=csv&stationID=48549&Year=${year}&Month=2&timeframe=1&submit= Download+Data";
done

echo "finished downloading files"

echo "preparing to concatenated files"
python3 concatenate_files.py && echo "SUCCESS"

