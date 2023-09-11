# eggNOG-mapper 2.1.12 Container

This repository provides a container for `eggNOG-mapper` version `2.1.12`.

## Setup

Before using the container, you need to download the necessary data for `eggNOG-mapper`. Follow the instructions provided in the [eggNOG-mapper wiki](https://github.com/eggnogdb/eggnog-mapper/wiki/eggNOG-mapper-v2.1.5-to-v2.1.12#user-content-Setup) for a detailed setup guide.

## Bash Scripts

There are 4 bash scripts provided in this repository to aid with the setup and usage of the container:

1. `00_container_bash.sh` - [pull container and start interactive session]
2. `01_download.sh` - [download the databases (run via container)]
3. `02_create_mmseqs_index.sh` - [create the index for mmseqs]
4. `03_create_bacterial_DB.sh` - [create smaller databases (chose diamond or mmseqs)]

## Run it like:

### mmseqs

``` bash
emapper.py \
--override \
--cpu 0 \
-i input.fasta \
-m mmseqs \
--mmseqs_db path_to_db/bacteria_mmseqs.mmseqs/bacteria_mmseqs.mmseqs \
--itype proteins \
--output_dir out \
-o out_mmseqs \
--data_dir /path_to_data/eggnog.db
```

### diamond

``` bash
emapper.py \
--override \
--cpu 0 \
-i input.fasta \
-m diamond \
--dmnd_db path_to_db/bacteria_diamond.dmnd \
--itype proteins \
--output_dir out \
-o out_diamond \
--data_dir /path_to_data/eggnog.db
```