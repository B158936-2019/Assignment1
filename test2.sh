#unzip *.gz file

for file in /localdisk/data/BPSM/Assignment1/fastq/*.gz
do
var01=${file##*/};
var02=${var01%%.*};
gunzip -c $file > ~/assignment1/submit/${var02}.fq;
echo "unzip $var01";
done

#build .fasta index for alignment
gunzip -c /localdisk/data/BPSM/Assignment1/Tbb_genome/Tb927_genome.fasta.gz >  ~/assignment1/submit/Tb927_genome.fasta;
bowtie2-build ~/assignment1/submit/Tb927_genome.fasta Tb927_index;

echo "build index of ref .fasta";

