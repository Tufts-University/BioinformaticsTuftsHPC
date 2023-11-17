.. _backbone-label:

Miniasm
==============================

Introduction
~~~~~~~~
Miniasm is a very fast OLC-based de novo assembler for noisy long reads.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/miniasm 
| Home page: https://github.com/lh3/miniasm

Versions
~~~~~~~~
- 0.3_r179

Commands
~~~~~~~
- miniasm
- minidot

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run miniasm on our clusters::

 #!/bin/bash
 #SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
 #SBATCH -t 1:00:00
 #SBATCH -N 1
 #SBATCH -n 1
 #SBATCH -c 4
 #SBATCH --mem=8G
 #SBATCH --job-name=miniasm
 #SBATCH --mail-type=FAIL,BEGIN,END
 #SBATCH --error=%x-%J-%u.err
 #SBATCH --output=%x-%J-%u.out

 module purge
 module load miniasm/XXXX ### you can run *module avail miniasm* to check all available versions
