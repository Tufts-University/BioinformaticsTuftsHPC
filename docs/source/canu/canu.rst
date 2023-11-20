.. _backbone-label:

Canu
==============================

Introduction
~~~~~~~~
Canu is a fork of the Celera Assembler, designed for high-noise single-molecule sequencing (such as the PacBio RS II/Sequel or Oxford Nanopore MinION).


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/canu 
| Home page: https://canu.readthedocs.io/en/latest/

Versions
~~~~~~~~
- 2.1.1
- 2.2

Commands
~~~~~~~
- canu

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run canu on our clusters::

 #!/bin/bash
 #SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
 #SBATCH -t 1:00:00
 #SBATCH -N 1
 #SBATCH -n 1
 #SBATCH -c 4
 #SBATCH --mem=8G
 #SBATCH --job-name=canu
 #SBATCH --mail-type=FAIL,BEGIN,END
 #SBATCH --error=%x-%J-%u.err
 #SBATCH --output=%x-%J-%u.out

 module purge
 module load canu/XXXX ### you can run *module avail canu* to check all available versions

 canu -p Cm -d clavibacter_pacbio genomeSize=3.4m  -pacbio *.fastq
