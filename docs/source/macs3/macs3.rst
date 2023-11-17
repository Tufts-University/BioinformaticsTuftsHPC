.. _backbone-label:

Macs3
==============================

Introduction
~~~~~~~~
Macs3 is Model-based Analysis of ChIP-Seq for identifying transcript factor.


| For more information, please check:
| Dockerhub: https://hub.docker.com/r/lbmc/macs3/3.0.0a6 
| Home page: https://github.com/macs3-project/MACS

Versions
~~~~~~~~
- 3.0.0a6

Commands
~~~~~~~
- macs3

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run macs3 on our clusters::

 #!/bin/bash
 #SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
 #SBATCH -t 1:00:00
 #SBATCH -N 1
 #SBATCH -n 1
 #SBATCH -c 4
 #SBATCH --mem=8G
 #SBATCH --job-name=macs3
 #SBATCH --mail-type=FAIL,BEGIN,END
 #SBATCH --error=%x-%J-%u.err
 #SBATCH --output=%x-%J-%u.out

 module purge
 module load macs3/XXXX ### you can run *module avail macs3* to check all available versions
