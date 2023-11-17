.. _backbone-label:

Bcftools
==============================

Introduction
~~~~~~~~
Bcftools is a program for variant calling and manipulating files in the Variant Call Format (VCF) and its binary counterpart BCF.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/bcftools 
| Home page: https://samtools.github.io/bcftools/bcftools.html

Versions
~~~~~~~~
- 1.13
- 1.14
- 1.17

Commands
~~~~~~~
- bcftools
- color-chrs.pl
- guess-ploidy.py
- plot-roh.py
- plot-vcfstats
- run-roh.pl
- vcfutils.pl

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run bcftools on our clusters::

#!/bin/bash
#SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
#SBATCH -t 1:00:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 4
#SBATCH --mem=8G
#SBATCH --job-name=bcftools
#SBATCH --mail-type=FAIL,BEGIN,END
#SBATCH --error=%x-%J-%u.err
#SBATCH --output=%x-%J-%u.out

module purge
module load bcftools/XXXX ### you can run *module avail bcftools* to check all available versions
