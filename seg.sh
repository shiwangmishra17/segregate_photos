mkdir Segregated_Photos
mv *.jpg Segregated_Photos/
for picture in Segregated_Photos/*.jpg
do
	year=$(echo $(basename $picture) | cut -c 1-4)
	month=$(echo $(basename $picture) | cut -c 6-6)
	mkdir -p Segregated_Photos/$year/$month
	mv $picture Segregated_Photos/$year/$month
done
