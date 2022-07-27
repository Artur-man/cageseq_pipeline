# cageseq_pipeline

This CAGE-seq pipeline includes rRNA filtering, Genome Alignment using STAR, and peak calling using MACS2. 

This pipeline is implemented to process CAGE-seq reads reported in: [Paper](https://www.nature.com/articles/sdata2017112)

##### Steps:
  1. STAR is used to count or filter out common RNAs (eg. rRNA, miRNA, tRNA, piRNA etc.). 
  2. STAR is used to align RNA-Seq reads to a genome. 
  3. MACS2 is used for calling peaks in aligned bam files. 

##### Pipeline Container:
  * Docker: dolphinnext/cageseq\_pipeline:1.0
  * GitHub: dolphinnext/cageseq\_pipeline
