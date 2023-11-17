.. _backbone-label:

Angsd
==============================

Introduction
~~~~~~~~
Angsd is a software for analyzing next generation sequencing data.


| For more information, please check:
| Home page: http://www.popgen.dk/angsd/index.php/ANGSD

Versions
~~~~~~~~
- 0.939
- 0.940

Commands
~~~~~~~
- angsd
- realSFS
- msToGlf
- thetaStat
- supersim

Module
~~~~~~~~
You can load the modules by::

    module load biocontainers
    module load angsd

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run angsd on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=angsd
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers angsd
