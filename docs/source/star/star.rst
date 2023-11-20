.. _backbone-label:

Star
==============================

Introduction
~~~~~~~~
STAR (Spliced Transcripts Alignment to a Reference) is an ultrafast universal RNA-seq aligner.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/star 
| Home page: https://github.com/alexdobin/STAR

Versions
~~~~~~~~
- 2.7.10a
- 2.7.10b
- 2.7.9a

Commands
~~~~~~~
- STAR
- STARlong

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run star on our clusters::

 #!/bin/bash
 #SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
 #SBATCH -t 1:00:00
 #SBATCH -N 1
 #SBATCH -n 1
 #SBATCH -c 24
 #SBATCH --job-name=star
 #SBATCH --mail-type=FAIL,BEGIN,END
 #SBATCH --error=%x-%J-%u.err
 #SBATCH --output=%x-%J-%u.out

 module purge
 module load star/XXXX ### you can run *module avail star* to check all available versions

 STAR  --runThreadN 24  --runMode genomeGenerate  --genomeDir ref_genome  --genomeFastaFiles ref_genome.fasta

 STAR --runThreadN 24 --genomeDir ref_genome --readFilesIn seq_1.fastq seq_2.fastq  --outSAMtype BAM SortedByCoordinate --outWigType wiggle read2
