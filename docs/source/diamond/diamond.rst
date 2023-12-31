.. _backbone-label:

Diamond
==============================

Introduction
~~~~~~~~
Diamond is sequence aligner for protein and translated DNA searches, designed for high performance analysis of big sequence data.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/diamond 
| Home page: https://github.com/bbuchfink/diamond

Versions
~~~~~~~~
- 2.0.15
- 2.1.6

Commands
~~~~~~~
- diamond

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run diamond on our clusters::

 #!/bin/bash
 #SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
 #SBATCH -t 1:00:00
 #SBATCH -N 1
 #SBATCH -n 1
 #SBATCH -c 4
 #SBATCH --mem=8G
 #SBATCH --job-name=diamond
 #SBATCH --mail-type=FAIL,BEGIN,END
 #SBATCH --error=%x-%J-%u.err
 #SBATCH --output=%x-%J-%u.out

 module purge
 module load diamond/XXXX ### you can run *module avail diamond* to check all available versions

 diamond makedb  --in uniprot_sprot.fasta -d uniprot_sprot
 diamond blastp -p 24 -q test.faa -d uniprot_sprot  --very-sensitive -o blastp_output.txt
