.. _backbone-label:

Trimmomatic
==============================

Introduction
~~~~~~~~
Trimmomatic is a flexible read trimming tool for Illumina NGS data


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/trimmomatic 
| Home page: http://www.usadellab.org/cms/index.php?pagetrimmomatic

Versions
~~~~~~~~
- 0.39

Commands
~~~~~~~
- trimmomatic

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run trimmomatic on our clusters::

#!/bin/bash
#SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
#SBATCH -t 1:00:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 4
#SBATCH --mem=8G
#SBATCH --job-name=trimmomatic
#SBATCH --mail-type=FAIL,BEGIN,END
#SBATCH --error=%x-%J-%u.err
#SBATCH --output=%x-%J-%u.out

module purge
module load trimmomatic/XXXX ### you can run *module avail trimmomatic* to check all available versions
