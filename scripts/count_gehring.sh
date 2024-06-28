#!/bin/bash
# generate count matrices

#kb count --verbose \
#-i /home/ggorin/ref/refdata-gex-mm10-2020-A/kallisto/index.idx \
#-g /home/ggorin/ref/refdata-gex-mm10-2020-A/t2g_mm10.txt \
#-x 10xv2 \
#-o ../counts/gehring_nsc/SA08522/ \
#-t 30 -m 30G \
#-c1 /home/ggorin/ref/refdata-gex-mm10-2020-A/kallisto/cdna_t2c.txt \
#-c2 /home/ggorin/ref/refdata-gex-mm10-2020-A/kallisto/intron_t2c.txt \
#--workflow lamanno --filter bustools --overwrite --loom \
#../counts/gehring_nsc/FT-SA08522_S1_L001_R1_001.fastq.gz \
#../counts/gehring_nsc/FT-SA08522_S1_L001_R2_001.fastq.gz \
#../counts/gehring_nsc/SA08522_S1_L007_R1_001.fastq.gz  \
#../counts/gehring_nsc/SA08522_S1_L007_R2_001.fastq.gz 

#FT-SA08523_S2_L001_R1_001.fastq.gz 
#kb count --verbose \
#-i /home/ggorin/ref/refdata-gex-mm10-2020-A/kallisto/index.idx \
#-g /home/ggorin/ref/refdata-gex-mm10-2020-A/t2g_mm10.txt \
#-x 10xv2 \
#-o ../counts/gehring_nsc/SA08523/ \
#-t 30 -m 30G \
#-c1 /home/ggorin/ref/refdata-gex-mm10-2020-A/kallisto/cdna_t2c.txt \
#-c2 /home/ggorin/ref/refdata-gex-mm10-2020-A/kallisto/intron_t2c.txt \
#--workflow lamanno --filter bustools --overwrite --loom \
#../counts/gehring_nsc/FT-SA08523_S2_L001_R1_001.fastq.gz \
#../counts/gehring_nsc/FT-SA08523_S2_L001_R2_001.fastq.gz \
#../counts/gehring_nsc/SA08523_S2_L007_R1_001.fastq.gz  \
#../counts/gehring_nsc/SA08523_S2_L007_R2_001.fastq.gz 

#FT-SA08524_S3_L001_R1_001.fastq.gz 
kb count --verbose \
-i /home/ggorin/ref/refdata-gex-mm10-2020-A/kallisto/index.idx \
-g /home/ggorin/ref/refdata-gex-mm10-2020-A/t2g_mm10.txt \
-x 10xv2 \
-o ../counts/gehring_nsc/SA08524/ \
-t 30 -m 30G \
-c1 /home/ggorin/ref/refdata-gex-mm10-2020-A/kallisto/cdna_t2c.txt \
-c2 /home/ggorin/ref/refdata-gex-mm10-2020-A/kallisto/intron_t2c.txt \
--workflow lamanno --filter bustools --overwrite --loom \
../counts/gehring_nsc/FT-SA08524_S3_L001_R1_001.fastq.gz \
../counts/gehring_nsc/FT-SA08524_S3_L001_R2_001.fastq.gz \
../counts/gehring_nsc/SA08524_S3_L007_R1_001.fastq.gz  \
../counts/gehring_nsc/SA08524_S3_L007_R2_001.fastq.gz 

#FT-SA08525_S4_L001_R1_001.fastq.gz 
kb count --verbose \
-i /home/ggorin/ref/refdata-gex-mm10-2020-A/kallisto/index.idx \
-g /home/ggorin/ref/refdata-gex-mm10-2020-A/t2g_mm10.txt \
-x 10xv2 \
-o ../counts/gehring_nsc/SA08525/ \
-t 30 -m 30G \
-c1 /home/ggorin/ref/refdata-gex-mm10-2020-A/kallisto/cdna_t2c.txt \
-c2 /home/ggorin/ref/refdata-gex-mm10-2020-A/kallisto/intron_t2c.txt \
--workflow lamanno --filter bustools --overwrite --loom \
../counts/gehring_nsc/FT-SA08525_S4_L001_R1_001.fastq.gz \
../counts/gehring_nsc/FT-SA08525_S4_L001_R2_001.fastq.gz \
../counts/gehring_nsc/SA08525_S4_L007_R1_001.fastq.gz  \
../counts/gehring_nsc/SA08525_S4_L007_R2_001.fastq.gz 


