.. _backbone-label:

Plink
==============================

Introduction
~~~~~~~~
Plink is a free, open-source whole genome association analysis toolset, designed to perform a range of basic, large-scale analyses in a computationally efficient manner.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/plink 
| Home page: https://zzz.bwh.harvard.edu/plink/

Versions
~~~~~~~~
- 1.90b6.21

Commands
~~~~~~~
- plink
- prettify

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run plink on our clusters::

#!/bin/bash
#SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
#SBATCH -t 1:00:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 4
#SBATCH --mem=8G
#SBATCH --job-name=plink
#SBATCH --mail-type=FAIL,BEGIN,END
#SBATCH --error=%x-%J-%u.err
#SBATCH --output=%x-%J-%u.out

module purge
module load plink/XXXX ### you can run *module avail plink* to check all available versions
