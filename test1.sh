
#task1:perform quality check on sequence data
for file in /localdisk/data/BPSM/Assignment1/fastq/*.gz
do
fastqc -o ~/assignment1/submit $file;
echo "performing quality check fastqc $file";

done

echo "Please open html files showed below to see quality report";

#list quality report
for htmlfile in *.html
do
echo $htmlfile;
done
