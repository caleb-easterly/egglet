#!/bin/bash

path_to_emap=$1
wd=$(pwd)

python $path_to_emap -i $wd/test/nlim_fragment.fasta \
	--output HMM_nlim --output_dir $wd/out \
	--override \
	--database thaNOG \
	--no_refine \
	--data_dir $wd/data	
		
python $path_to_emap -i $wd/test/nlim_fragment.fasta \
	--output DIA_nlim --output_dir $wd/out \
	--override -m diamond --data_dir $wd/data \
	--no_file_comments

