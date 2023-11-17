.. _backbone-label:

Medaka
==============================

Introduction
~~~~~~~~
Medaka is a tool to create consensus sequences and variant calls from nanopore sequencing data.


| For more information, please check:
| Docker hub: https://hub.docker.com/r/ontresearch/medaka 
| Home page: https://github.com/nanoporetech/medaka

Versions
~~~~~~~~
- 1.11.1

Commands
~~~~~~~
- medaka
- medaka_consensus
- medaka_counts
- medaka_data_path
- medaka_haploid_variant
- medaka_version_report

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run medaka on our clusters::

#!/bin/bash
#SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
#SBATCH -t 1:00:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 4
#SBATCH --mem=8G
#SBATCH --job-name=medaka
#SBATCH --mail-type=FAIL,BEGIN,END
#SBATCH --error=%x-%J-%u.err
#SBATCH --output=%x-%J-%u.out

module purge
module load medaka/XXXX ### you can run *module avail medaka* to check all available versions
