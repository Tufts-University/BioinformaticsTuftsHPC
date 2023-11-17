.. _backbone-label:

Cutadapt
==============================

Introduction
~~~~~~~~
Cutadapt finds and removes adapter sequences, primers, poly-A tails and other types of unwanted sequence from your high-throughput sequencing reads.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/cutadapt 
| Home page: https://cutadapt.readthedocs.io/en/stable/

Versions
~~~~~~~~
- 3.4
- 3.7

Commands
~~~~~~~
- cutadapt

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run cutadapt on our clusters::

 #!/bin/bash
 #SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
 #SBATCH -t 1:00:00
 #SBATCH -N 1
 #SBATCH -n 1
 #SBATCH -c 4
 #SBATCH --mem=8G
 #SBATCH --job-name=cutadapt
 #SBATCH --mail-type=FAIL,BEGIN,END
 #SBATCH --error=%x-%J-%u.err
 #SBATCH --output=%x-%J-%u.out

 module purge
 module load cutadapt/XXXX ### you can run *module avail cutadapt* to check all available versions
