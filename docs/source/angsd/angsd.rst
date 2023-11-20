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

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run angsd on our clusters::

 #!/bin/bash
 #SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
 #SBATCH -t 1:00:00
 #SBATCH -N 1
 #SBATCH -n 1
 #SBATCH -c 4
 #SBATCH --mem=8G
 #SBATCH --job-name=angsd
 #SBATCH --mail-type=FAIL,BEGIN,END
 #SBATCH --error=%x-%J-%u.err
 #SBATCH --output=%x-%J-%u.out

 module purge
 module load angsd/XXXX ### you can run module avail angsd to check all available versions

 angsd -b bam.filelist -GL 1 -doMajorMinor 1 -doMaf 2 -P 5 -minMapQ 30 -minQ 20 -minMaf 0.05

