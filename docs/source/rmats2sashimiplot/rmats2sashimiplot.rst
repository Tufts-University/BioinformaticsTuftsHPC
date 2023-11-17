.. _backbone-label:

Rmats2sashimiplot
==============================

Introduction
~~~~~~~~
Rmats2sashimiplot produces a sashimiplot visualization of rMATS output.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/rmats2sashimiplot 
| Home page: https://github.com/Xinglab/rmats2sashimiplot

Versions
~~~~~~~~
- 2.0.4
- 3.0.0

Commands
~~~~~~~
- rmats2sashimiplot

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run rmats2sashimiplot on our clusters::

#!/bin/bash
#SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
#SBATCH -t 1:00:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 4
#SBATCH --mem=8G
#SBATCH --job-name=rmats2sashimiplot
#SBATCH --mail-type=FAIL,BEGIN,END
#SBATCH --error=%x-%J-%u.err
#SBATCH --output=%x-%J-%u.out

module purge
module load rmats2sashimiplot/XXXX ### you can run *module avail rmats2sashimiplot* to check all available versions
