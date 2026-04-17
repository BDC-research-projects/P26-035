# P26-035
Cellranger count and Cellranger aggr on single cell transcriptomic data from  mice samples 

### Packages and versions
cellranger 7.1.0 

## cellranger count

### Input data
1. output dir name / run ID
2. path to .fastq files
3. unique part ofsample name
4. path to reference transcriptome dir - see below how to download


### Download reference transcriptome for mouse
```
wget https://cf.10xgenomics.com/supp/cell-exp/refdata-gex-GRCm39-2024-A.tar.gz
tar -zxvf refdata-gex-GRCm39-2024-A.tar.gz
```

### Example run
Run this script in the directory where you ould like to create you output folder
```
run_cellranger.sh <OUTPUT_DIR> <path/to/fastq/files> <SAMPLE>
```

## cellranger aggr

### Input data
1. output dir name / run ID
2. path to sample info csv - see below how to create this file

### Create sample info csv
cellranger aggr uses the .h5 output from cellranger count from each of the samples you want to aggregate. It could look like this:
```
sample_id,molecule_h5
SAMPLE1,/path/to/cellranger_count_output_folder_for_sample2/outs/molecule_info.h5
SAMPLE2,/path/to/cellranger_count_output_folder_for_sample2/outs/molecule_info.h5
...
...
```

## Find out more about how to run cellranger 
Cellranger count: https://www.10xgenomics.com/support/software/cell-ranger/latest/tutorials/cr-tutorial-ct

Cellranger aggr: https://www.10xgenomics.com/support/software/cell-ranger/latest/tutorials/cr-tutorial-ag


