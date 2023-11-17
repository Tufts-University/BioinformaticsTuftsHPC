.. _backbone-label:

Alphafold
==============================

Introduction
~~~~~~~~
Alphafold is an artificial intelligence program developed by Alphabets's/Google's DeepMind which performs predictions of protein structure.


| For more information, please check:
| Home page: https://github.com/deepmind/alphafold

Versions
~~~~~~~~
- 2.3.0
- 2.3.1

Commands
~~~~~~~
- run_alphafold.sh

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run alphafold on our clusters::

 #!/bin/bash
 #SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
 #SBATCH -t 1:00:00
 #SBATCH -N 1
 #SBATCH -n 1
 #SBATCH -c 4
 #SBATCH --mem=8G
 #SBATCH --job-name=alphafold
 #SBATCH --mail-type=FAIL,BEGIN,END
 #SBATCH --error=%x-%J-%u.err
 #SBATCH --output=%x-%J-%u.out

 module purge
 module load alphafold/XXXX ### you can run *module avail alphafold* to check all available versions
