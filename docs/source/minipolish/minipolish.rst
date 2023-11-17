.. _backbone-label:

Minipolish
==============================

Introduction
~~~~~~~~
Minipolish is a tool for Racon polishing of miniasm assemblies.


| For more information, please check:
| Docker hub: https://hub.docker.com/r/staphb/minipolish 
| Home page: https://github.com/rrwick/Minipolish

Versions
~~~~~~~~
- 0.1.3

Commands
~~~~~~~
- minipolish

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run minipolish on our clusters::

#!/bin/bash
#SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
#SBATCH -t 1:00:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 4
#SBATCH --mem=8G
#SBATCH --job-name=minipolish
#SBATCH --mail-type=FAIL,BEGIN,END
#SBATCH --error=%x-%J-%u.err
#SBATCH --output=%x-%J-%u.out

module purge
module load minipolish/XXXX ### you can run *module avail minipolish* to check all available versions
