#!/bin/bash
# generate count matrices

kb count --verbose \
-i /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/index.idx \
-g /home/ggorin/ref/refdata-gex-GRCh38-2020-A/t2g_grch38.txt \
-x 10xv2 \
-o ../counts/norman_crispr/gem5/ \
-t 30 -m 30G \
-c1 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/cdna_t2c.txt \
-c2 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/intron_t2c.txt \
--workflow lamanno --filter bustools --overwrite --loom \
../counts/norman_crispr/fastq/SRR9602543_1.fastq.gz \
../counts/norman_crispr/fastq/SRR9602543_2.fastq.gz \
../counts/norman_crispr/fastq/SRR9602544_1.fastq.gz  \
../counts/norman_crispr/fastq/SRR9602544_2.fastq.gz & \


kb count --verbose \
-i /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/index.idx \
-g /home/ggorin/ref/refdata-gex-GRCh38-2020-A/t2g_grch38.txt \
-x 10xv2 \
-o ../counts/norman_crispr/gem6/ \
-t 30 -m 30G \
-c1 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/cdna_t2c.txt \
-c2 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/intron_t2c.txt \
--workflow lamanno --filter bustools --overwrite --loom \
../counts/norman_crispr/fastq/SRR9602545_1.fastq.gz \
../counts/norman_crispr/fastq/SRR9602545_2.fastq.gz \
../counts/norman_crispr/fastq/SRR9602546_1.fastq.gz  \
../counts/norman_crispr/fastq/SRR9602546_2.fastq.gz & \


kb count --verbose \
-i /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/index.idx \
-g /home/ggorin/ref/refdata-gex-GRCh38-2020-A/t2g_grch38.txt \
-x 10xv2 \
-o ../counts/norman_crispr/gem7/ \
-t 30 -m 30G \
-c1 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/cdna_t2c.txt \
-c2 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/intron_t2c.txt \
--workflow lamanno --filter bustools --overwrite --loom \
../counts/norman_crispr/fastq/SRR9602547_1.fastq.gz \
../counts/norman_crispr/fastq/SRR9602547_2.fastq.gz \
../counts/norman_crispr/fastq/SRR9602548_1.fastq.gz  \
../counts/norman_crispr/fastq/SRR9602548_2.fastq.gz & \


kb count --verbose \
-i /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/index.idx \
-g /home/ggorin/ref/refdata-gex-GRCh38-2020-A/t2g_grch38.txt \
-x 10xv2 \
-o ../counts/norman_crispr/gem8/ \
-t 30 -m 30G \
-c1 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/cdna_t2c.txt \
-c2 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/intron_t2c.txt \
--workflow lamanno --filter bustools --overwrite --loom \
../counts/norman_crispr/fastq/SRR9602549_1.fastq.gz \
../counts/norman_crispr/fastq/SRR9602549_2.fastq.gz \
../counts/norman_crispr/fastq/SRR9602550_1.fastq.gz  \
../counts/norman_crispr/fastq/SRR9602550_2.fastq.gz
