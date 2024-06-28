#!/bin/bash
# generate count matrices

kb count --verbose \
-i /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/index.idx \
-g /home/ggorin/ref/refdata-gex-GRCh38-2020-A/t2g_grch38.txt \
-x 10xv2 \
-o ../counts/norman_crispr/gem1/ \
-t 30 -m 30G \
-c1 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/cdna_t2c.txt \
-c2 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/intron_t2c.txt \
--workflow lamanno --filter bustools --overwrite --loom \
../counts/norman_crispr/fastq/SRR9602535_1.fastq.gz \
../counts/norman_crispr/fastq/SRR9602535_2.fastq.gz \
../counts/norman_crispr/fastq/SRR9602536_1.fastq.gz  \
../counts/norman_crispr/fastq/SRR9602536_2.fastq.gz & \


kb count --verbose \
-i /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/index.idx \
-g /home/ggorin/ref/refdata-gex-GRCh38-2020-A/t2g_grch38.txt \
-x 10xv2 \
-o ../counts/norman_crispr/gem2/ \
-t 30 -m 30G \
-c1 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/cdna_t2c.txt \
-c2 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/intron_t2c.txt \
--workflow lamanno --filter bustools --overwrite --loom \
../counts/norman_crispr/fastq/SRR9602537_1.fastq.gz \
../counts/norman_crispr/fastq/SRR9602537_2.fastq.gz \
../counts/norman_crispr/fastq/SRR9602538_1.fastq.gz  \
../counts/norman_crispr/fastq/SRR9602538_2.fastq.gz & \


kb count --verbose \
-i /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/index.idx \
-g /home/ggorin/ref/refdata-gex-GRCh38-2020-A/t2g_grch38.txt \
-x 10xv2 \
-o ../counts/norman_crispr/gem3/ \
-t 30 -m 30G \
-c1 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/cdna_t2c.txt \
-c2 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/intron_t2c.txt \
--workflow lamanno --filter bustools --overwrite --loom \
../counts/norman_crispr/fastq/SRR9602539_1.fastq.gz \
../counts/norman_crispr/fastq/SRR9602539_2.fastq.gz \
../counts/norman_crispr/fastq/SRR9602540_1.fastq.gz  \
../counts/norman_crispr/fastq/SRR9602540_2.fastq.gz & \


kb count --verbose \
-i /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/index.idx \
-g /home/ggorin/ref/refdata-gex-GRCh38-2020-A/t2g_grch38.txt \
-x 10xv2 \
-o ../counts/norman_crispr/gem4/ \
-t 30 -m 30G \
-c1 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/cdna_t2c.txt \
-c2 /home/ggorin/ref/refdata-gex-GRCh38-2020-A/kallisto/intron_t2c.txt \
--workflow lamanno --filter bustools --overwrite --loom \
../counts/norman_crispr/fastq/SRR9602541_1.fastq.gz \
../counts/norman_crispr/fastq/SRR9602541_2.fastq.gz \
../counts/norman_crispr/fastq/SRR9602542_1.fastq.gz  \
../counts/norman_crispr/fastq/SRR9602542_2.fastq.gz
