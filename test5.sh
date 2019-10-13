bedtools multicov -bams 0.bam 1.bam 2.bam 3.bam 4.bam 5.bam -bed Tbbgenes.sort.bed > multicov.bed

#counts the reads of overlap in each BAM files, and list the results at 7th,8th,9th,10th,11th,12th columns in ref.bed file

echo "count the reads of overlap in each sample files";
echo "the results are in multicov.bed";
