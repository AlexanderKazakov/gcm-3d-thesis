#!/usr/bin/env bash


bounds_name="bounds-z.png"
in_folder="elastic-pressure-z"
in_name__="pressure-z"
out_folder="out"

rm -rf $out_folder
mkdir -p $out_folder

for i in {0..141}; do
	in_name=$(printf "$in_name__.%04d.png" "$i") 
	res_name="$in_name"
	in_name_with_folder="$in_folder/$in_name"
	out_name_with_folder="$out_folder/$res_name"
	composite $bounds_name $in_name_with_folder $out_name_with_folder
done
