 awk -v OFS='\t' '{sumo=0;for(i=7;i<=9;i++){sumo+=$i;} sumt=0;for(j=10;j<=12;j++) {sumt+=$j;} {print $0,sumo/3,sumt/3;} }' multicov.bed > meanR.bed

#count mean reads of slender and  of stumpy
echo "count mean reads of slender and stumpy samples";
echo "results are in meanR.bed";
echo "the mean reads of slender and stumpy are in 13th,14th column";
