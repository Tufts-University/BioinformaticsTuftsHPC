.. _backbone-label:

Biobakery_workflows
==============================

Introduction
~~~~~~~~
BioBakery workflows is a collection of workflows and tasks for executing common microbial community analyses using standardized, validated tools and parameters.


| For more information, please check:
| Docker hub: https://hub.docker.com/r/biobakery/workflows 
| Home page: https://huttenhower.sph.harvard.edu/biobakery_workflows 
| Github: https://github.com/biobakery/biobakery_workflows

Versions
~~~~~~~~
- 3.0.0.a.7

Commands
~~~~~~~
- biobakery_workflows

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run biobakery_workflows on our clusters::

#!/bin/bash
#SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
#SBATCH -t 1:00:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 4
#SBATCH --mem=8G
#SBATCH --job-name=biobakery_workflows
#SBATCH --mail-type=FAIL,BEGIN,END
#SBATCH --error=%x-%J-%u.err
#SBATCH --output=%x-%J-%u.out

module purge
module load biobakery_workflows/XXXX ### you can run *module avail biobakery_workflows* to check all available versions
