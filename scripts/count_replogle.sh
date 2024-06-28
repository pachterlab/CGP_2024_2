#!/bin/bash
# generate count matrices

kb count --verbose \
-i /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/index.idx \
-g /home/ggorin/ref/refdata-gex-GRCh38-2020-A/t2g_grch38.txt \
-x 10xv3 \
-o ../counts/replogle_crispr/lane1/ \
-t 30 -m 30G \
-c1 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/cdna_t2c.txt \
-c2 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/intron_t2c.txt \
--workflow lamanno --filter bustools --overwrite --loom \
../counts/replogle_crispr/fastq/SRR11214049_2.fastq \
../counts/replogle_crispr/fastq/SRR11214049_3.fastq \
../counts/replogle_crispr/fastq/SRR11214060_2.fastq  \
../counts/replogle_crispr/fastq/SRR11214060_3.fastq  \
../counts/replogle_crispr/fastq/SRR11214071_2.fastq  \
../counts/replogle_crispr/fastq/SRR11214071_3.fastq  \
../counts/replogle_crispr/fastq/SRR11214082_2.fastq  \
../counts/replogle_crispr/fastq/SRR11214082_3.fastq & \


kb count --verbose \
-i /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/index.idx \
-g /home/ggorin/ref/refdata-gex-GRCh38-2020-A/t2g_grch38.txt \
-x 10xv3 \
-o ../counts/replogle_crispr/lane2/ \
-t 30 -m 30G \
-c1 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/cdna_t2c.txt \
-c2 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/intron_t2c.txt \
--workflow lamanno --filter bustools --overwrite --loom \
../counts/replogle_crispr/fastq/SRR11214291_2.fastq \
../counts/replogle_crispr/fastq/SRR11214291_3.fastq \
../counts/replogle_crispr/fastq/SRR11214050_2.fastq  \
../counts/replogle_crispr/fastq/SRR11214050_3.fastq  \
../counts/replogle_crispr/fastq/SRR11214051_2.fastq  \
../counts/replogle_crispr/fastq/SRR11214051_3.fastq  \
../counts/replogle_crispr/fastq/SRR11214052_2.fastq  \
../counts/replogle_crispr/fastq/SRR11214052_3.fastq & \

kb count --verbose \
-i /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/index.idx \
-g /home/ggorin/ref/refdata-gex-GRCh38-2020-A/t2g_grch38.txt \
-x 10xv3 \
-o ../counts/replogle_crispr/lane3/ \
-t 30 -m 30G \
-c1 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/cdna_t2c.txt \
-c2 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/intron_t2c.txt \
--workflow lamanno --filter bustools --overwrite --loom \
../counts/replogle_crispr/fastq/SRR11214057_2.fastq \
../counts/replogle_crispr/fastq/SRR11214057_3.fastq \
../counts/replogle_crispr/fastq/SRR11214058_2.fastq  \
../counts/replogle_crispr/fastq/SRR11214058_3.fastq  \
../counts/replogle_crispr/fastq/SRR11214059_2.fastq  \
../counts/replogle_crispr/fastq/SRR11214059_3.fastq  \
../counts/replogle_crispr/fastq/SRR11214061_2.fastq  \
../counts/replogle_crispr/fastq/SRR11214061_3.fastq & \

kb count --verbose \
-i /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/index.idx \
-g /home/ggorin/ref/refdata-gex-GRCh38-2020-A/t2g_grch38.txt \
-x 10xv3 \
-o ../counts/replogle_crispr/lane4/ \
-t 30 -m 30G \
-c1 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/cdna_t2c.txt \
-c2 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/intron_t2c.txt \
--workflow lamanno --filter bustools --overwrite --loom \
../counts/replogle_crispr/fastq/SRR11214066_2.fastq \
../counts/replogle_crispr/fastq/SRR11214066_3.fastq \
../counts/replogle_crispr/fastq/SRR11214067_2.fastq  \
../counts/replogle_crispr/fastq/SRR11214067_3.fastq  \
../counts/replogle_crispr/fastq/SRR11214068_2.fastq  \
../counts/replogle_crispr/fastq/SRR11214068_3.fastq  \
../counts/replogle_crispr/fastq/SRR11214069_2.fastq  \
../counts/replogle_crispr/fastq/SRR11214069_3.fastq & \

kb count --verbose \
-i /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/index.idx \
-g /home/ggorin/ref/refdata-gex-GRCh38-2020-A/t2g_grch38.txt \
-x 10xv3 \
-o ../counts/replogle_crispr/lane5/ \
-t 30 -m 30G \
-c1 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/cdna_t2c.txt \
-c2 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/intron_t2c.txt \
--workflow lamanno --filter bustools --overwrite --loom \
../counts/replogle_crispr/fastq/SRR11214075_2.fastq \
../counts/replogle_crispr/fastq/SRR11214075_3.fastq \
../counts/replogle_crispr/fastq/SRR11214076_2.fastq  \
../counts/replogle_crispr/fastq/SRR11214076_3.fastq  \
../counts/replogle_crispr/fastq/SRR11214077_2.fastq  \
../counts/replogle_crispr/fastq/SRR11214077_3.fastq  \
../counts/replogle_crispr/fastq/SRR11214078_2.fastq  \
../counts/replogle_crispr/fastq/SRR11214078_3.fastq & \

kb count --verbose \
-i /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/index.idx \
-g /home/ggorin/ref/refdata-gex-GRCh38-2020-A/t2g_grch38.txt \
-x 10xv3 \
-o ../counts/replogle_crispr/lane6/ \
-t 30 -m 30G \
-c1 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/cdna_t2c.txt \
-c2 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/intron_t2c.txt \
--workflow lamanno --filter bustools --overwrite --loom \
../counts/replogle_crispr/fastq/SRR11214084_2.fastq \
../counts/replogle_crispr/fastq/SRR11214084_3.fastq \
../counts/replogle_crispr/fastq/SRR11214085_2.fastq  \
../counts/replogle_crispr/fastq/SRR11214085_3.fastq  \
../counts/replogle_crispr/fastq/SRR11214086_2.fastq  \
../counts/replogle_crispr/fastq/SRR11214086_3.fastq  \
../counts/replogle_crispr/fastq/SRR11214087_2.fastq  \
../counts/replogle_crispr/fastq/SRR11214087_3.fastq 
