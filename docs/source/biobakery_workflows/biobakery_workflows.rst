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

Module
~~~~~~~~
You can load the modules by::

    module load biocontainers
    module load biobakery_workflows

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run biobakery_workflows on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=biobakery_workflows
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers biobakery_workflows
