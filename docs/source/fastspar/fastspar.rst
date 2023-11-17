.. _backbone-label:

Fastspar
==============================

Introduction
~~~~~~~~
FastSpar is a C++ implementation of the SparCC algorithm which is up to several thousand times faster than the original Python2 release and uses much less memory. The FastSpar implementation provides threading support and a p-value estimator which accounts for the possibility of repetitious data permutations.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/fastspar 
| Home page: https://github.com/scwatts/fastspar

Versions
~~~~~~~~
- 1.0.0

Commands
~~~~~~~
- fastspar
- fastspar_reduce
- fastspar_bootstrap
- fastspar_pvalue

Module
~~~~~~~~
You can load the modules by::

    module load biocontainers
    module load fastspar

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run fastspar on our clusters::

    #!/bin/bash
    #SBATCH -A myallocation     # Allocation name
    #SBATCH -t 1:00:00
    #SBATCH -N 1
    #SBATCH -n 1
    #SBATCH --job-name=fastspar
    #SBATCH --mail-type=FAIL,BEGIN,END
    #SBATCH --error=%x-%J-%u.err
    #SBATCH --output=%x-%J-%u.out

    module --force purge
    ml biocontainers fastspar
