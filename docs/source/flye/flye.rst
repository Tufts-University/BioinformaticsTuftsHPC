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

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run flye on our clusters::

 #!/bin/bash
 #SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
 #SBATCH -t 1:00:00
 #SBATCH -N 1
 #SBATCH -n 1
 #SBATCH -c 4
 #SBATCH --mem=8G
 #SBATCH --job-name=flye
 #SBATCH --mail-type=FAIL,BEGIN,END
 #SBATCH --error=%x-%J-%u.err
 #SBATCH --output=%x-%J-%u.out

 module purge
 module load flye/XXXX ### you can run *module avail flye* to check all available versions

 flye --pacbio-raw E.coli_PacBio_40x.fasta --out-dir out_pacbio --threads 12
 flye --nano-raw Loman_E.coli_MAP006-1_2D_50x.fasta --out-dir out_nano --threads 12
