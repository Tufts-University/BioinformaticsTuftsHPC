.. _backbone-label:

Qiime2
==============================

Introduction
~~~~~~~~
QIIME 2 is a powerful, extensible, and decentralized microbiome analysis package with a focus on data and analysis transparency. QIIME 2 enables researchers to start an analysis with raw DNA sequence data and finish with publication-quality figures and statistical results.


| For more information, please check:
| BioContainers: https://quay.io/repository/qiime2/core 
| Home page: https://qiime2.org/

Versions
~~~~~~~~
- 2023.2
- 2023.5
- 2023.7
- 2023.9

Commands
~~~~~~~
- biom
- qiime
- python
- python3

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run qiime2 on our clusters::

 #!/bin/bash
 #SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
 #SBATCH -t 1:00:00
 #SBATCH -N 1
 #SBATCH -n 1
 #SBATCH -c 4
 #SBATCH --mem=8G
 #SBATCH --job-name=qiime2
 #SBATCH --mail-type=FAIL,BEGIN,END
 #SBATCH --error=%x-%J-%u.err
 #SBATCH --output=%x-%J-%u.out

 module purge
 module load qiime2/XXXX ### you can run *module avail qiime2* to check all available versions

 qiime metadata tabulate \
        --m-input-file rep-seqs.qza \
        --m-input-file taxonomy.qza \
        --o-visualization tabulated-feature-metadata.qzv
