.. _backbone-label:

Flye
==============================

Introduction
~~~~~~~~
Flye: Fast and accurate de novo assembler for single molecule sequencing reads.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/flye 
| Home page: https://github.com/fenderglass/Flye

Versions
~~~~~~~~
- 2.9.1
- 2.9.2
- 2.9

Commands
~~~~~~~
- flye

Module
~~~~~~~~
You can load the modules by::

    module load biocontainers
    module load flye

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run flye on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=flye
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers flye
