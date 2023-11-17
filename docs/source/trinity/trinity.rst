.. _backbone-label:

Trinity
==============================

Introduction
~~~~~~~~
Trinity assembles transcript sequences from Illumina RNA-Seq data.


| For more information, please check:
| BioContainers: https://biocontainers.pro/tools/trinity 
| Home page: https://github.com/trinityrnaseq/trinityrnaseq/

Versions
~~~~~~~~
- 2.15.0
- 2.15.1

Commands
~~~~~~~
- Trinity
- TrinityStats.pl
- Trinity_gene_splice_modeler.py
- ace2sam
- align_and_estimate_abundance.pl
- analyze_blastPlus_topHit_coverage.pl
- analyze_diff_expr.pl
- blast2sam.pl
- bowtie
- bowtie2
- bowtie2-build
- bowtie2-inspect
- bowtie2sam.pl
- contig_ExN50_statistic.pl
- define_clusters_by_cutting_tree.pl
- export2sam.pl
- extract_supertranscript_from_reference.py
- filter_low_expr_transcripts.pl
- get_Trinity_gene_to_trans_map.pl
- insilico_read_normalization.pl
- interpolate_sam.pl
- jellyfish
- novo2sam.pl
- retrieve_sequences_from_fasta.pl
- run_DE_analysis.pl
- sam2vcf.pl
- samtools
- samtools.pl
- seq_cache_populate.pl
- seqtk-trinity
- sift_bam_max_cov.pl
- soap2sam.pl
- tabix
- trimmomatic
- wgsim
- wgsim_eval.pl
- zoom2sam.pl

Example job
~~~~~
.. warning::
    Using ``#!/bin/sh -l`` as shebang in the slurm job script will cause the failure of some biocontainer modules. Please use ``#!/bin/bash`` instead.

To run trinity on our clusters::

#!/bin/bash
#SBATCH -p PartitionName  # batch, gpu, preempt, mpi or your group's own partition
#SBATCH -t 1:00:00
#SBATCH -N 1
#SBATCH -n 1
#SBATCH -c 4
#SBATCH --mem=8G
#SBATCH --job-name=trinity
#SBATCH --mail-type=FAIL,BEGIN,END
#SBATCH --error=%x-%J-%u.err
#SBATCH --output=%x-%J-%u.out

module purge
module load trinity/XXXX ### you can run *module avail trinity* to check all available versions
