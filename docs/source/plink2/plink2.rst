.. _backbone-label:

Plink2
==============================

Introduction
~~~~~~~~
Plink2 is a whole genome association analysis toolset.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/plink2 
| Home page: https://bioconda.github.io/recipes/plink2/README.html

Versions
~~~~~~~~
- 2.00a2.3

Commands
~~~~~~~
- plink2

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run plink2 on our clusters::

 #!/bin/bash
 #SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
 #SBATCH -t 1:00:00
 #SBATCH -N 1
 #SBATCH -n 1
 #SBATCH -c 4
 #SBATCH --mem=8G
 #SBATCH --job-name=plink2
 #SBATCH --mail-type=FAIL,BEGIN,END
 #SBATCH --error=%x-%J-%u.err
 #SBATCH --output=%x-%J-%u.out

 module purge
 module load plink2/XXXX ### you can run *module avail plink2* to check all available versions
 
 plink2 --bfile HapMap_3_r3_1 --freq --out HapMap_3_r3_1_out
