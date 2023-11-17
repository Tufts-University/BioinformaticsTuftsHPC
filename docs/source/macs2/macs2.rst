.. _backbone-label:

Macs2
==============================

Introduction
~~~~~~~~
MACS2 is Model-based Analysis of ChIP-Seq for identifying transcript factor binding sites.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/macs2 
| Home page: https://github.com/macs3-project/MACS

Versions
~~~~~~~~
- 2.2.7.1

Commands
~~~~~~~
- macs2

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run macs2 on our clusters::

 #!/bin/bash
 #SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
 #SBATCH -t 1:00:00
 #SBATCH -N 1
 #SBATCH -n 1
 #SBATCH -c 4
 #SBATCH --mem=8G
 #SBATCH --job-name=macs2
 #SBATCH --mail-type=FAIL,BEGIN,END
 #SBATCH --error=%x-%J-%u.err
 #SBATCH --output=%x-%J-%u.out

 module purge
 module load macs2/XXXX ### you can run *module avail macs2* to check all available versions
