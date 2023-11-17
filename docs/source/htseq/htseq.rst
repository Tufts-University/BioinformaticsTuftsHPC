.. _backbone-label:

Htseq
==============================

Introduction
~~~~~~~~
HTSeq is a Python library to facilitate processing and analysis of data from high-throughput sequencing (HTS) experiments.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/htseq 
| Home page: https://github.com/htseq/htseq

Versions
~~~~~~~~
- 2.0.2

Commands
~~~~~~~
- htseq-count
- htseq-count-barcodes
- htseq-qa
- python
- python3

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run htseq on our clusters::

 #!/bin/bash
 #SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
 #SBATCH -t 1:00:00
 #SBATCH -N 1
 #SBATCH -n 1
 #SBATCH -c 4
 #SBATCH --mem=8G
 #SBATCH --job-name=htseq
 #SBATCH --mail-type=FAIL,BEGIN,END
 #SBATCH --error=%x-%J-%u.err
 #SBATCH --output=%x-%J-%u.out

 module purge
 module load htseq/XXXX ### you can run *module avail htseq* to check all available versions
