.. _backbone-label:

Cufflinks
==============================

Introduction
~~~~~~~~
Cufflinks assembles transcripts, estimates their abundances, and tests for differential expression and regulation in RNA-Seq samples. It accepts aligned RNA-Seq reads and assembles the alignments into a parsimonious set of transcripts. Cufflinks then estimates the relative abundances of these transcripts based on how many reads support each one, taking into account biases in library preparation protocols.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/cufflinks 
| Home page: https://cole-trapnell-lab.github.io/cufflinks/

Versions
~~~~~~~~
- 2.2.1

Commands
~~~~~~~
- cuffcompare
- cuffdiff
- cufflinks
- cuffmerge
- cuffnorm
- cuffquant
- gffread
- gtf_to_sam

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run cufflinks on our clusters::

 #!/bin/bash
 #SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
 #SBATCH -t 1:00:00
 #SBATCH -N 1
 #SBATCH -n 1
 #SBATCH -c 4
 #SBATCH --mem=8G
 #SBATCH --job-name=cufflinks
 #SBATCH --mail-type=FAIL,BEGIN,END
 #SBATCH --error=%x-%J-%u.err
 #SBATCH --output=%x-%J-%u.out

 module purge
 module load cufflinks/XXXX ### you can run *module avail cufflinks* to check all available versions
