.. _backbone-label:

Picard
==============================

Introduction
~~~~~~~~
Picard is a set of command line tools for manipulating high-throughput sequencing (HTS) data and formats such as SAM/BAM/CRAM and VCF.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/picard 
| Home page: https://broadinstitute.github.io/picard/

Versions
~~~~~~~~
- 2.25.1
- 2.26.10

Commands
~~~~~~~
- picard

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run picard on our clusters::

 #!/bin/bash
 #SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
 #SBATCH -t 1:00:00
 #SBATCH -N 1
 #SBATCH -n 1
 #SBATCH -c 4
 #SBATCH --mem=8G
 #SBATCH --job-name=picard
 #SBATCH --mail-type=FAIL,BEGIN,END
 #SBATCH --error=%x-%J-%u.err
 #SBATCH --output=%x-%J-%u.out

 module purge
 module load picard/XXXX ### you can run *module avail picard* to check all available versions

 picard MarkDuplicates -Xmx64g I=19P0126636WES_sorted.bam O=19P0126636WES_sorted_md.bam M=19P0126636WES.sorted.markdup.txt REMOVE_DUPLICATES=true
 picard BuildBamIndex -Xmx64g I=19P0126636WES_sorted_md.bam
 picard CreateSequenceDictionary -R hg38.fa -O hg38.dict
