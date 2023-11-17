.. _backbone-label:

Hmmer
==============================

Introduction
~~~~~~~~
Hmmer is used for searching sequence databases for sequence homologs, and for making sequence alignments.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/hmmer 
| Home page: http://hmmer.org

Versions
~~~~~~~~
- 3.3.2

Commands
~~~~~~~
- alimask
- easel
- esl-afetch
- esl-alimanip
- esl-alimap
- esl-alimask
- esl-alimerge
- esl-alipid
- esl-alirev
- esl-alistat
- esl-compalign
- esl-compstruct
- esl-construct
- esl-histplot
- esl-mask
- esl-mixdchlet
- esl-reformat
- esl-selectn
- esl-seqrange
- esl-seqstat
- esl-sfetch
- esl-shuffle
- esl-ssdraw
- esl-translate
- esl-weight
- hmmalign
- hmmbuild
- hmmconvert
- hmmemit
- hmmfetch
- hmmlogo
- hmmpgmd
- hmmpgmd_shard
- hmmpress
- hmmscan
- hmmsearch
- hmmsim
- hmmstat
- jackhmmer
- makehmmerdb
- nhmmer
- nhmmscan
- phmmer

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run hmmer on our clusters::

#!/bin/bash
#SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
#SBATCH -t 1:00:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 4
#SBATCH --mem=8G
#SBATCH --job-name=hmmer
#SBATCH --mail-type=FAIL,BEGIN,END
#SBATCH --error=%x-%J-%u.err
#SBATCH --output=%x-%J-%u.out

module purge
module load hmmer/XXXX ### you can run *module avail hmmer* to check all available versions
