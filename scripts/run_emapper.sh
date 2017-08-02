#!/bin/bash

# put path to emapper.py
path_to_emap=$1

# must be run from inside egglet 
wd=$(pwd)

python $path_to_emap -i $wd/test/nlim_fragment.fasta \
	--output HMM_nlim --output_dir $wd/out \
	--override \
	--database $wd/data/hmmdb_levels/ENOG411CB2I/ENOG411CB2I \
	--data_dir $wd/data\
	--no_refine\
	--no_annot	
		
python $path_to_emap -i $wd/test/nlim_fragment.fasta \
	--output DIA_nlim \
	--output_dir $wd/out \
	--override \
	-m diamond \
	--data_dir $wd/data \
	--no_file_comments \
	--no_annot

