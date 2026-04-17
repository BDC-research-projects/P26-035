# Inputs needed
id=$1 # Output directory name
fastq_dir=$2 # path/to/your/fastq/files
reference_transcriptome=$3 # path/to/reference/transcriptome/dir

# Run cellranger on one sample
cellranger count --id=$id 
   --fastqs=$fastq_dir 
   --sample=$sample_name \
   --transcriptome=$reference_transcriptome \
   --localcores=8 \
   --localmem=64
