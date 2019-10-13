#group by gene and position
bedtools groupby -i meanR.bed -g 1-4 -c 7,8,9 -o mean | awk -v OFS='\t' '{sum1=0;for(i=5;i<=7;i++){sum1+=$i;}{print $1,$2,$3,$4,sum1/3;}}' > groupinfo.slender.bed;

bedtools groupby -i meanR.bed -g 1-4 -c 10,11,12 -o mean |awk -v OFS='\t' '{sumt=0;for(j=5;j<=7;j++){sumt+=$j;}{print $1,$2,$3,$4,sumt/3;}}' > groupinfo.stumpy.bed;

echo "count each groups' mean reads of slender and stumpy samples";
echo "results are in groupinfo.slender.bed and groupinfo.stumpy.bed";

#main information and mean reads of each group

cut -f1,4,5 groupinfo.slender.bed > groupinfo.slender.tsv;
cut -f1,4,5 groupinfo.stumpy.bed > groupinfo.stumpy.tsv;
#5th column is the mean reads of slender or stumpy
echo "the main information of slender and stumpy are in group*.tsv files ";
