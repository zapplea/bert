#!/bin/bash
#SBATCH --get-user-env
#SBATCH --job-name="bertdat"
#SBATCH --time=24:00:00
#SBATCH --nodes=1
#SBATCH --mem=100GB
#SBATCH --ntasks-per-node=1
#SBATCH --cpus-per-task=1
module load python/3.6.1
python create_pretraining_aic2018data.py \
        --input_file '/datastore/liu121/sentidata2/data/meituan_jieba/testa_cut.pkl,/datastore/liu121/sentidata2/data/meituan_jieba/testb_cut.pkl,/datastore/liu121/sentidata2/data/meituan_jieba/train_cut.pkl,/datastore/liu121/sentidata2/data/meituan_jieba/val_cut.pkl' \
        --output_file '/datastore/liu121/sentidata2/data/bert/aic2018_pertaining_data.bert' \
        --vocab_file '/datastore/liu121/sentidata2/data/bert/vocab.txt'