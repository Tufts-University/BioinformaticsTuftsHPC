.. _backbone-label:

Cellranger-atac
==============================

Introduction
~~~~~~~~
Cellranger-atac is a set of analysis pipelines that process Chromium Single Cell ATAC data.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/cellranger-atac 
| Home page: https://support.10xgenomics.com/single-cell-atac/software/pipelines/latest/algorithms/overview

Versions
~~~~~~~~
- 2.0.0
- 2.1.0

Commands
~~~~~~~
- cellranger-atac

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run cellranger-atac on our clusters::

#!/bin/bash
#SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
#SBATCH -t 1:00:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 4
#SBATCH --mem=8G
#SBATCH --job-name=cellranger-atac
#SBATCH --mail-type=FAIL,BEGIN,END
#SBATCH --error=%x-%J-%u.err
#SBATCH --output=%x-%J-%u.out

module purge
module load cellranger-atac/XXXX ### you can run *module avail cellranger-atac* to check all available versions
