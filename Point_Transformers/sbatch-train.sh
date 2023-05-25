#!/bin/bash
#
#SBATCH --job-name=point_transformer
#SBATCH --partition=gypsum-m40
#SBATCH --gres=gpu:2
#SBATCH --mem=50G
#SBATCH --cpus-per-task=5
#SBATCH -o logs/%j-train_modelnet40.out

module load miniconda
conda activate ptransformer
python train_cls.py