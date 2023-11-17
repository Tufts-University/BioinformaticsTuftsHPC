.. _backbone-label:

Polypolish
==============================

Introduction
~~~~~~~~
Polypolish is a tool for polishing genome assemblies with short reads. Unlike other tools in this category, Polypolish uses SAM files where each read has been aligned to all possible locations (not just a single best location). This allows it to repair errors in repeat regions that other alignment-based polishers cannot fix.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/polypolish 
| Home page: https://github.com/rrwick/Polypolish

Versions
~~~~~~~~
- 0.5.0

Commands
~~~~~~~
- polypolish
- polypolish_insert_filter.py

Module
~~~~~~~~
You can load the modules by::

    module load biocontainers
    module load polypolish

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run polypolish on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=polypolish
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers polypolish
