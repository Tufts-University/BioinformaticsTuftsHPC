.. _backbone-label:

Samtools
==============================

Introduction
~~~~~~~~
Samtools is a set of utilities for the Sequence Alignment/Map (SAM) format.


| For more information, please check:
| Docker hub: https://hub.docker.com/r/staphb/samtools 
| Home page: https://github.com/samtools/samtools

Versions
~~~~~~~~
- 1.16
- 1.17

Commands
~~~~~~~
- ace2sam
- blast2sam.pl
- bowtie2sam.pl
- export2sam.pl
- fasta-sanitize.pl
- interpolate_sam.pl
- maq2sam-long
- maq2sam-short
- md5fa
- md5sum-lite
- novo2sam.pl
- plot-ampliconstats
- plot-bamstats
- psl2sam.pl
- sam2vcf.pl
- samtools
- samtools.pl
- seq_cache_populate.pl
- soap2sam.pl
- wgsim
- wgsim_eval.pl
- zoom2sam.pl

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run samtools on our clusters::

#!/bin/bash
#SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
#SBATCH -t 1:00:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 4
#SBATCH --mem=8G
#SBATCH --job-name=samtools
#SBATCH --mail-type=FAIL,BEGIN,END
#SBATCH --error=%x-%J-%u.err
#SBATCH --output=%x-%J-%u.out

module purge
module load samtools/XXXX ### you can run *module avail samtools* to check all available versions
