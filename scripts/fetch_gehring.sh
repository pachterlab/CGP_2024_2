#!/bin/bash
#Get all fastqs

curl -L -C - https://data.caltech.edu/tindfiles/serve/eed2447c-787d-409a-a274-de8e8d3a2fc0/ -o FT-SA08522_S1_L001_R1_001.fastq.gz & \
curl -L -C - https://data.caltech.edu/tindfiles/serve/13d0b71d-9c41-44f5-bd45-2b374aa5b704/ -o FT-SA08522_S1_L001_R2_001.fastq.gz & \
curl -L -C - https://data.caltech.edu/tindfiles/serve/b686466d-b538-4e81-a378-2c4156c6177e/ -o FT-SA08523_S2_L001_R1_001.fastq.gz & \
curl -L -C - https://data.caltech.edu/tindfiles/serve/cdbe5d53-6d3a-482a-b2f5-d8de7f89d910/ -o FT-SA08523_S2_L001_R2_001.fastq.gz & \
curl -L -C - https://data.caltech.edu/tindfiles/serve/eb869388-66a0-4fb1-bf44-cc26a66f3764/ -o FT-SA08524_S3_L001_R1_001.fastq.gz & \
curl -L -C - https://data.caltech.edu/tindfiles/serve/7863fdd4-ac6d-4a8f-919b-84a55c38c8e8/ -o FT-SA08524_S3_L001_R2_001.fastq.gz & \
curl -L -C - https://data.caltech.edu/tindfiles/serve/8615f530-ae0d-45f4-aad5-1e2fc3e4a054/ -o FT-SA08525_S4_L001_R1_001.fastq.gz & \
curl -L -C - https://data.caltech.edu/tindfiles/serve/35dfe547-ed6c-4dfc-9de8-e8e4d20ad088/ -o FT-SA08525_S4_L001_R2_001.fastq.gz & \
curl -L https://data.caltech.edu/tindfiles/serve/900437b7-b192-4f33-80db-37a1750e1d66/ -o SA08522_S1_L007_R1_001.fastq.gz & \
curl -L https://data.caltech.edu/tindfiles/serve/368145cc-b3fe-4faa-891d-f3771138d2b0/ -o SA08522_S1_L007_R2_001.fastq.gz & \
curl -L https://data.caltech.edu/tindfiles/serve/c5c4b0da-2e0a-4bec-b1e3-08a7fbeec575/ -o SA08523_S2_L007_R1_001.fastq.gz & \
curl -L https://data.caltech.edu/tindfiles/serve/4675e4ba-4674-4ef8-8ebb-71a8d4e481a2/ -o SA08523_S2_L007_R2_001.fastq.gz & \
curl -L https://data.caltech.edu/tindfiles/serve/4d29d99b-ef41-4482-a350-0329d5bdce8b/ -o SA08524_S3_L007_R1_001.fastq.gz & \
curl -L https://data.caltech.edu/tindfiles/serve/1f8aa4d4-e8a1-49dd-ba2b-ccb78601348d/ -o SA08524_S3_L007_R2_001.fastq.gz & \
curl -L https://data.caltech.edu/tindfiles/serve/eb21980a-22bc-4da5-b5ba-f781a79b2758/ -o SA08525_S4_L007_R1_001.fastq.gz & \
curl -L https://data.caltech.edu/tindfiles/serve/ff991f43-494c-499a-8e91-e66abf81225d/ -o SA08525_S4_L007_R2_001.fastq.gz

