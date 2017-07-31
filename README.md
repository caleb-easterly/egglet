# tinyNOG

A much reduced version of the eggNOG database for testing purposes. 

To reduce size, the following procedure was followed: 

1) Choose one of the smallest taxonomically restricted databases, thaNOG. 
2) Arbitrarily select an orthologous group (OG) that is represented in thaNOG. The OG *1CB2I* was chosen. 
3) Using SQL, reduce the `event`, `member`, and `og` tables in the `eggnog.db` database to only a few entries each (see [this script](scripts/make_small.sql))
4) Find a fasta sequence represented in the OG (Nlim\_1033 was chosen, with the sequence downloadable [here](https://string-db.org/cgi/generate_task_specific_download_file.pl?taskId=X6sS4YlpHC4q&download_data_format=seqs&download_file_name=string_protein_sequences.fa)). Shorten the sequence for querying. 
5) Make a DIAMOND database from the single FASTA sequence using `diamond makedb` 
6) In hmmdb\_levels, delete all but the thaNOG directory. 
7) In OG\_fasta, remove most of the FASTA databases associated with OGs. Only keep *1CB2[A-Z]*. 

Using this database depends on either using [this functionality](https://github.com/jhcepas/eggnog-mapper/pull/44) (also [here](https://github.com/jhcepas/eggnog-mapper/pull/56)) in `eggnog-mapper` to specify a data directory independently of the install directory, or copying `tinyNOG/data` into `eggnog-mapper/data`. For the first, add `--data_dir ~/path_to/tinyNOG/data` to the command line invocation of `emapper.py`.
