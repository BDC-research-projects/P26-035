# Inputs
out_dir_name=$1
samplesheet_csv=$2 # path/to/sample/info.csv


# Run cellranger aggr
cellranger aggr \
    --id=$out_dir_name \
    --csv=$samplesheet_csv \
    --localcores=8 \
    --localmem=64
