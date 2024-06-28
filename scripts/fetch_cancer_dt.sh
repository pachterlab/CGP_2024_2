#!/bin/bash
#Get all fastqs
#See https://github.com/ncbi/sra-tools/wiki/02.-Installing-SRA-Toolkit for updated sra tools

prefetch SRR9833038 --max-size 30000000000 -O ./ && fasterq-dump --include-technical --split-files SRR9833038 && \
prefetch SRR9833037 --max-size 60000000000 -O ./ &&  fasterq-dump --include-technical --split-files SRR9833037 
