#!/bin/bash
# generate count matrices

kb count --verbose \
-i /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/index.idx \
-g /home/ggorin/ref/refdata-gex-GRCh38-2020-A/t2g_grch38.txt \
-x 10xv3 \
-o ../counts/cancer_dt/PC9D3Erl/ \
-t 30 -m 30G \
-c1 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/cdna_t2c.txt \
-c2 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/intron_t2c.txt \
--workflow lamanno --filter bustools --overwrite --loom \
../counts/cancer_dt/SRR9833038_1.fastq \
../counts/cancer_dt/SRR9833038_2.fastq & \

kb count --verbose \
-i /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/index.idx \
-g /home/ggorin/ref/refdata-gex-GRCh38-2020-A/t2g_grch38.txt \
-x 10xv3 \
-o ../counts/cancer_dt/PC9D0/ \
-t 30 -m 30G \
-c1 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/cdna_t2c.txt \
-c2 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/intron_t2c.txt \
--workflow lamanno --filter bustools --overwrite --loom \
../counts/cancer_dt/SRR9833037_1.fastq \
../counts/cancer_dt/SRR9833037_2.fastq
