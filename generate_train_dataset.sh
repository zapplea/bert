#!/bin/bash
python3 create_pretraining_aic2018data.py \
        --is_create_vocab True \
        --input_file '/datastore/liu121/sentidata2/data/meituan_jieba/testa_cut.pkl,
                      /datastore/liu121/sentidata2/data/meituan_jieba/testb_cut.pkl,
                      /datastore/liu121/sentidata2/data/meituan_jieba/train_cut.pkl,
                      /datastore/liu121/sentidata2/data/meituan_jieba/val_cut.pkl' \
        --output_file '/datastore/liu121/sentidata2/data/bert/aic2018_pertaining_data.bert' \
        --vocab_file '/datastore/liu121/sentidata2/data/bert/vocab.txt'