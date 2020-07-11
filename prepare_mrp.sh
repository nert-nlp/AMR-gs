#!/usr/bin/env bash

#set -e


data_dir=$1
#amr_train_data=${data_dir}/training/amr.mrp
#drg_train_data=${data_dir}/training/drg.mrp
#eds_train_data=${data_dir}/training/eds.mrp
#ptg_train_data=${data_dir}/training/ptg.mrp
#ucca_train_data=${data_dir}/training/ucca.mrp
#amr_dev_data=${data_dir}/validation/amr.mrp
#drg_dev_data=${data_dir}/validation/drg.mrp
#eds_dev_data=${data_dir}/validation/eds.mrp
#ptg_dev_data=${data_dir}/validation/ptg.mrp
#ucca_dev_data=${data_dir}/validation/ucca.mrp

python3 -u -m parser.extract --train_data ${data_dir}/training/amr.features.mrp --vocab_dir amr_train_data=${data_dir}/training/amr_vocabs
python3 -u -m parser.extract --train_data ${data_dir}/training/drg.features.mrp --vocab_dir amr_train_data=${data_dir}/training/drg_vocabs
python3 -u -m parser.extract --train_data ${data_dir}/training/eds.features.mrp --vocab_dir amr_train_data=${data_dir}/training/eds_vocabs
python3 -u -m parser.extract --train_data ${data_dir}/training/ptg.features.mrp --vocab_dir amr_train_data=${data_dir}/training/ptg_vocabs
python3 -u -m parser.extract --train_data ${data_dir}/training/ucca.features.mrp --vocab_dir amr_train_data=${data_dir}/training/ucca_vocabs

python3 -u -m parser.extract --train_data ${data_dir}/validation/amr.features.mrp --vocab_dir amr_train_data=${data_dir}/validation/amr_vocabs
python3 -u -m parser.extract --train_data ${data_dir}/validation/drg.features.mrp --vocab_dir amr_train_data=${data_dir}/validation/drg_vocabs
python3 -u -m parser.extract --train_data ${data_dir}/validation/eds.features.mrp --vocab_dir amr_train_data=${data_dir}/validation/eds_vocabs
python3 -u -m parser.extract --train_data ${data_dir}/validation/ptg.features.mrp --vocab_dir amr_train_data=${data_dir}/validation/ptg_vocabs
python3 -u -m parser.extract --train_data ${data_dir}/validation/ucca.features.mrp --vocab_dir amr_train_data=${data_dir}/validation/ucca_vocabs

#mv *_vocab ${dataset}/
# python3 encoder.py
# cat ${dataset}/*embed | sort | uniq > ${dataset}/glove.embed.txt
# rm ${dataset}/*embed
