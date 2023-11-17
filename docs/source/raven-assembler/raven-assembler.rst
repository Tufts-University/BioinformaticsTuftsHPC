.. _backbone-label:

Raven-assembler
==============================

Introduction
~~~~~~~~
Raven-assembler is a de novo genome assembler for long uncorrected reads.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/raven-assembler 
| Home page: https://github.com/lbcb-sci/raven

Versions
~~~~~~~~
- 1.8.1

Commands
~~~~~~~
- raven

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run raven-assembler on our clusters::

#!/bin/bash
#SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
#SBATCH -t 1:00:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 4
#SBATCH --mem=8G
#SBATCH --job-name=raven-assembler
#SBATCH --mail-type=FAIL,BEGIN,END
#SBATCH --error=%x-%J-%u.err
#SBATCH --output=%x-%J-%u.out

module purge
module load raven-assembler/XXXX ### you can run *module avail raven-assembler* to check all available versions
