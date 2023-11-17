.. _backbone-label:

Fasta3
==============================

Introduction
~~~~~~~~
Fasta3 is a suite of programs for searching nucleotide or protein databases with a query sequence.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/fasta3 
| Home page: https://github.com/wrpearson/fasta36

Versions
~~~~~~~~
- 36.3.8

Commands
~~~~~~~
- fasta36
- fastf36
- fastm36
- fasts36
- fastx36
- fasty36
- ggsearch36
- glsearch36
- lalign36
- ssearch36
- tfastf36
- tfastm36
- tfasts36
- tfastx36
- tfasty36

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run fasta3 on our clusters::

 #!/bin/bash
 #SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
 #SBATCH -t 1:00:00
 #SBATCH -N 1
 #SBATCH -n 1
 #SBATCH -c 4
 #SBATCH --mem=8G
 #SBATCH --job-name=fasta3
 #SBATCH --mail-type=FAIL,BEGIN,END
 #SBATCH --error=%x-%J-%u.err
 #SBATCH --output=%x-%J-%u.out

 module purge
 module load fasta3/XXXX ### you can run *module avail fasta3* to check all available versions
