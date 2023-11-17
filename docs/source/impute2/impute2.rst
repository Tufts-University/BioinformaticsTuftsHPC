.. _backbone-label:

Impute2
==============================

Introduction
~~~~~~~~
Impute2 is a genotype imputation and haplotype phasing program.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/impute2 
| Home page: https://mathgen.stats.ox.ac.uk/impute/impute_v2.html#home

Versions
~~~~~~~~
- 2.3.2

Commands
~~~~~~~
- impute2

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run impute2 on our clusters::

 #!/bin/bash
 #SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
 #SBATCH -t 1:00:00
 #SBATCH -N 1
 #SBATCH -n 1
 #SBATCH -c 4
 #SBATCH --mem=8G
 #SBATCH --job-name=impute2
 #SBATCH --mail-type=FAIL,BEGIN,END
 #SBATCH --error=%x-%J-%u.err
 #SBATCH --output=%x-%J-%u.out

 module purge
 module load impute2/XXXX ### you can run *module avail impute2* to check all available versions
