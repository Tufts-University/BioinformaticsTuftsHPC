.. _backbone-label:

Filtlong
==============================

Introduction
~~~~~~~~
Filtlong is a tool for filtering long reads by quality. It can take a set of long reads and produce a smaller, better subset. It uses both read length (longer is better) and read identity (higher is better) when choosing which reads pass the filter.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/filtlong 
| Home page: https://github.com/rrwick/Filtlong

Versions
~~~~~~~~
- 0.2.1

Commands
~~~~~~~
- filtlong

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run filtlong on our clusters::

 #!/bin/bash
 #SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
 #SBATCH -t 1:00:00
 #SBATCH -N 1
 #SBATCH -n 1
 #SBATCH -c 4
 #SBATCH --mem=8G
 #SBATCH --job-name=filtlong
 #SBATCH --mail-type=FAIL,BEGIN,END
 #SBATCH --error=%x-%J-%u.err
 #SBATCH --output=%x-%J-%u.out

 module purge
 module load filtlong/XXXX ### you can run *module avail filtlong* to check all available versions
