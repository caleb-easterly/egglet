#!/bin/bash

path_to_emap=$1
wd=$(pwd)

python $path_to_emap -i $wd/test/nlim_fragment.fasta --output HMM_nlim --output_dir $wd/out --no_file_comments --override -d thaNOG --data_dir $wd/data
python $path_to_emap -i $wd/test/nlim_fragment.fasta --output DIA_nlim --output_dir $wd/out --no_file_comments --override -d thaNOG -m diamond --data_dir $wd/data


