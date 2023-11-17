.. _backbone-label:

Bedtools
==============================

Introduction
~~~~~~~~
Bedtools is an extensive suite of utilities for genome arithmetic and comparing genomic features in BED format.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/bedtools 
| Home page: https://github.com/arq5x/bedtools2

Versions
~~~~~~~~
- 2.30.0
- 2.31.0

Commands
~~~~~~~
- annotateBed
- bamToBed
- bamToFastq
- bed12ToBed6
- bedpeToBam
- bedToBam
- bedToIgv
- bedtools
- closestBed
- clusterBed
- complementBed
- coverageBed
- expandCols
- fastaFromBed
- flankBed
- genomeCoverageBed
- getOverlap
- groupBy
- intersectBed
- linksBed
- mapBed
- maskFastaFromBed
- mergeBed
- multiBamCov
- multiIntersectBed
- nucBed
- pairToBed
- pairToPair
- randomBed
- shiftBed
- shuffleBed
- slopBed
- sortBed
- subtractBed
- tagBam
- unionBedGraphs
- windowBed
- windowMaker

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run bedtools on our clusters::

 #!/bin/bash
 #SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
 #SBATCH -t 1:00:00
 #SBATCH -N 1
 #SBATCH -n 1
 #SBATCH -c 4
 #SBATCH --mem=8G
 #SBATCH --job-name=bedtools
 #SBATCH --mail-type=FAIL,BEGIN,END
 #SBATCH --error=%x-%J-%u.err
 #SBATCH --output=%x-%J-%u.out

 module purge
 module load bedtools/XXXX ### you can run *module avail bedtools* to check all available versions
