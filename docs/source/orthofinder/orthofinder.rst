.. _backbone-label:

Orthofinder
==============================

Introduction
~~~~~~~~
OrthoFinder is a fast, accurate and comprehensive platform for comparative genomics. It finds orthogroups and orthologs, infers rooted gene trees for all orthogroups and identifies all of the gene duplication events in those gene trees. It also infers a rooted species tree for the species being analysed and maps the gene duplication events from the gene trees to branches in the species tree. OrthoFinder also provides comprehensive statistics for comparative genomic analyses.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/orthofinder 
| Home page: https://github.com/davidemms/OrthoFinder

Versions
~~~~~~~~
- 2.5.5

Commands
~~~~~~~
- orthofinder

Module
~~~~~~~~
You can load the modules by::

    module load biocontainers
    module load orthofinder

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run orthofinder on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=orthofinder
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers orthofinder
