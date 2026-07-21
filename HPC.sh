#!/bin/bash

#SBATCH --job-name=FloodSformer_train
#SBATCH --output=%x.o%j
#SBATCH --error=%x.e%j
#SBATCH --nodes=1
#SBATCH --partition=gpu
#SBATCH --ntasks-per-node=1
#SBATCH --gpus-per-node=a100_80g:1
#SBATCH --cpus-per-task=1
#SBATCH --mem=12GB
#SBATCH --time=08:00:00
#SBATCH --open-mode=append


#In SLURM filename patterns:

# %x
# means the job name.
# %j
# means the job ID.

ehco "JOB NAME : $SLURM_JOB_NAME"
echo "JOB_ID  : $SLURM_JOB_NAME"
echo "PARTITION: $SLURM_JOB_PARTITION"
echo "MEMORY: $SLURM_MEMORY_PER_NODE mb"
echo "HOSTNAME: $HOSTNAME"
echo "GPU ID: $SLURM_JOB_GPUS"

module load anaconda
conda activate floodsformer

WORKINGDIR=/hpc/scratch/name.surname/FloodSformer

echo "WORKINGDIR: $WORKINGDIR"
echo '======================='
echo

cd $WORKINGDIR
python3 ....

conda decativate