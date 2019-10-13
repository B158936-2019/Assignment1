for bamfile in *.bam
do
samtools index $bamfile;
done
#build index of BAM files for alignment

bedtools sort -sizeD -i /localdisk/data/BPSM/Assignment1/Tbbgenes.bed > ~/assignment1/submit/Tbbgenes.sort.bed;
#sort reference .bed
