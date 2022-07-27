# cageseq_pipeline

This CAGE-seq pipeline includes rRNA filtering, Genome Alignment using STAR, and peak calling using MACS2. 

This pipeline is implemented to process CAGE-seq reads reported in: [Paper](https://www.nature.com/articles/sdata2017112)

##### Steps:
  1. STAR is used to count or filter out common RNAs (eg. rRNA, miRNA, tRNA, piRNA etc.). 
  2. STAR is used to align RNA-Seq reads to a genome. 
  3. MACS2 is used for calling peaks in aligned bam files. 

##### Program Versions:
  - Star v2.6.1 # don't upgrade me - 2.7X indices incompatible with iGenomes.
  - Samtools v1.3
  - Bowtie2 v2.3.5
  - Bowtie v1.2.2
  - Bedtools v2.29.2
  - Ucsc-wigToBigWig v377
  - Macs2 v2.1.2

##### Pipeline Container:
  * Docker: dolphinnext/cageseq\_pipeline:1.0
  * GitHub: dolphinnext/cageseq\_pipeline
