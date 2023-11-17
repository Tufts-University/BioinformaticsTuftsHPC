.. _backbone-label:

Salmon
==============================

Introduction
~~~~~~~~
Salmon is a tool for quantifying the expression of transcripts using RNA-seq data.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/salmon 
| Home page: https://combine-lab.github.io/salmon/

Versions
~~~~~~~~
- 1.10.1
- 1.9.0

Commands
~~~~~~~
- salmon

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run salmon on our clusters::

#!/bin/bash
#SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
#SBATCH -t 1:00:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 4
#SBATCH --mem=8G
#SBATCH --job-name=salmon
#SBATCH --mail-type=FAIL,BEGIN,END
#SBATCH --error=%x-%J-%u.err
#SBATCH --output=%x-%J-%u.out

module purge
module load salmon/XXXX ### you can run *module avail salmon* to check all available versions
