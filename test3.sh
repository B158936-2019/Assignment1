#align sequencing reads to reference(Tb927)sequences
echo "aligning reads to ref(Tb927) sequences from 216_L8 to 222_L8 samples";

file01=(~/assignment1/submit/*1.fq);
file02=(~/assignment1/submit/*2.fq);

for ((i=0;i<${#file01[@]};i++))
do

bowtie2 -p 8 -x Tb927_index -1 ${file01[$i]} -2 ${file02[$i]} | samtools sort -O bam -@ 10 -o - > $[i].bam;

done

# output the sorted BAM files

echo "the results are in 0-5.bam files"
