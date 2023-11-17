.. _backbone-label:

Fastp
==============================

Introduction
~~~~~~~~
Fastp is an ultra-fast all-in-one FASTQ preprocessor (QC/adapters/trimming/ filtering/splitting/merging, etc).


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/fastp 
| Home page: https://github.com/OpenGene/fastp/

Versions
~~~~~~~~
- 0.23.2

Commands
~~~~~~~
- fastp

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run fastp on our clusters::

#!/bin/bash
#SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
#SBATCH -t 1:00:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 4
#SBATCH --mem=8G
#SBATCH --job-name=fastp
#SBATCH --mail-type=FAIL,BEGIN,END
#SBATCH --error=%x-%J-%u.err
#SBATCH --output=%x-%J-%u.out

module purge
module load fastp/XXXX ### you can run *module avail fastp* to check all available versions
