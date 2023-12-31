.. _backbone-label:

Megahit
==============================

Introduction
~~~~~~~~
Megahit is a ultra-fast single-node solution for large and complex metagenomics assembly via succinct de Bruijn graph.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/megahit 
| Home page: https://github.com/voutcn/megahit

Versions
~~~~~~~~
- 1.2.9

Commands
~~~~~~~
- megahit

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run megahit on our clusters::

 #!/bin/bash
 #SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
 #SBATCH -t 1:00:00
 #SBATCH -N 1
 #SBATCH -n 1
 #SBATCH -c 4
 #SBATCH --mem=8G
 #SBATCH --job-name=megahit
 #SBATCH --mail-type=FAIL,BEGIN,END
 #SBATCH --error=%x-%J-%u.err
 #SBATCH --output=%x-%J-%u.out

 module purge
 module load megahit/XXXX ### you can run *module avail megahit* to check all available versions

 megahit --12 SRR1976948.abundtrim.subset.pe.fq.gz,SRR1977249.abundtrim.subset.pe.fq.gz -o combined
