.. _backbone-label:

Fastqc
==============================

Introduction
~~~~~~~~
FastQC aims to provide a simple way to do some quality control checks on raw raw sequence data coming from high throughput sequencing pipelines. It provides a modular set of analyses which you can use to give a quick impression of whether your data has any problems of which you should be aware before doing any further analysis.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/fastqc 
| Home page: https://www.bioinformatics.babraham.ac.uk/projects/fastqc/

Versions
~~~~~~~~
- 0.12.1

Commands
~~~~~~~
- fastqc

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run fastqc on our clusters::

#!/bin/bash
#SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
#SBATCH -t 1:00:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 4
#SBATCH --mem=8G
#SBATCH --job-name=fastqc
#SBATCH --mail-type=FAIL,BEGIN,END
#SBATCH --error=%x-%J-%u.err
#SBATCH --output=%x-%J-%u.out

module purge
module load fastqc/XXXX ### you can run *module avail fastqc* to check all available versions
