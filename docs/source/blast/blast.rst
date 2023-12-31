.. _backbone-label:

Blast
==============================

Introduction
~~~~~~~~
BLAST (Basic Local Alignment Search Tool) finds regions of similarity between biological sequences. The program compares nucleotide or protein sequences to sequence databases and calculates the statistical significance.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/blast 
| Home page: https://blast.ncbi.nlm.nih.gov/Blast.cgi?CMDWeb&PAGE_TYPEBlastHome

Versions
~~~~~~~~
- 2.13.0

Commands
~~~~~~~
- blastn
- blastp
- blastx
- blast_formatter
- amino-acid-composition
- between-two-genes
- blastdbcheck
- blastdbcmd
- blastdb_aliastool
- cleanup-blastdb-volumes.py
- deltablast
- dustmasker
- eaddress
- eblast
- get_species_taxids.sh
- legacy_blast.pl
- makeblastdb
- makembindex
- makeprofiledb
- psiblast
- rpsblast
- rpstblastn
- run-ncbi-converter
- segmasker
- tblastn
- tblastx
- update_blastdb.pl
- windowmasker

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run blast on our clusters::

 #!/bin/bash
 #SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
 #SBATCH -t 1:00:00
 #SBATCH -N 1
 #SBATCH -n 1
 #SBATCH -c 4
 #SBATCH --mem=8G
 #SBATCH --job-name=blast
 #SBATCH --mail-type=FAIL,BEGIN,END
 #SBATCH --error=%x-%J-%u.err
 #SBATCH --output=%x-%J-%u.out

 module purge
 module load blast/XXXX ### you can run *module avail blast* to check all available versions

 blastp -query protein.fasta -db nr -out test_out -num_threads 4
