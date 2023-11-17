.. _backbone-label:

Spades
==============================

Introduction
~~~~~~~~
Spades is an assembly toolkit containing various assembly pipelines.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/spades 
| Home page: https://cab.spbu.ru/software/spades/

Versions
~~~~~~~~
- 3.15.4
- 3.15.5

Commands
~~~~~~~
- spades-bwa
- spades-convert-bin-to-fasta
- spades-core
- spades-corrector-core
- spades-gbuilder
- spades-gmapper
- spades-gsimplifier
- spades-hammer
- spades-ionhammer
- spades-kmer-estimating
- spades-kmercount
- spades-read-filter
- spades-truseq-scfcorrection
- coronaspades.py
- metaplasmidspades.py
- metaspades.py
- metaviralspades.py
- plasmidspades.py
- rnaspades.py
- rnaviralspades.py
- spades.py
- spades_init.py
- truspades.py

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run spades on our clusters::

#!/bin/bash
#SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
#SBATCH -t 1:00:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 4
#SBATCH --mem=8G
#SBATCH --job-name=spades
#SBATCH --mail-type=FAIL,BEGIN,END
#SBATCH --error=%x-%J-%u.err
#SBATCH --output=%x-%J-%u.out

module purge
module load spades/XXXX ### you can run *module avail spades* to check all available versions
