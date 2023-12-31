.. _backbone-label:

Gatk4
==============================

Introduction
~~~~~~~~
GATK (Genome Analysis Toolkit) is a collection of command-line tools for analyzing high-throughput sequencing data with a primary focus on variant discovery.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/gatk4 
| Home page: https://www.broadinstitute.org/gatk/

Versions
~~~~~~~~
- 4.2.6.1
- 4.3.0.0

Commands
~~~~~~~
- gatk

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run gatk4 on our clusters::

 #!/bin/bash
 #SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
 #SBATCH -t 1:00:00
 #SBATCH -N 1
 #SBATCH -n 1
 #SBATCH -c 4
 #SBATCH --mem=8G
 #SBATCH --job-name=gatk4
 #SBATCH --mail-type=FAIL,BEGIN,END
 #SBATCH --error=%x-%J-%u.err
 #SBATCH --output=%x-%J-%u.out

 module purge
 module load gatk4/XXXX ### you can run *module avail gatk4* to check all available versions

 gatk --java-options "-Xmx12G -XX:ParallelGCThreads=24" HaplotypeCaller \
      -R hg38.fa -I 19P0126636WES.sorted.bam \
      -O 19P0126636WES.HC.vcf --sample-name 19P0126636
