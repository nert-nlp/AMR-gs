#!/usr/bin/env bash

set -e


data_dir=$1
amr_train_data=${data_dir}/training/amr.mrp
drg_train_data=${data_dir}/training/drg.mrp
eds_train_data=${data_dir}/training/eds.mrp
ptg_train_data=${data_dir}/training/ptg.mrp
ucca_train_data=${data_dir}/training/ucca.mrp
amr_dev_data=${data_dir}/validation/amr.mrp
drg_dev_data=${data_dir}/validation/drg.mrp
eds_dev_data=${data_dir}/validation/eds.mrp
ptg_dev_data=${data_dir}/validation/ptg.mrp
ucca_dev_data=${data_dir}/validation/ucca.mrp


# Start a Stanford CoreNLP server before running this script.
# https://stanfordnlp.github.io/CoreNLP/corenlp-server.html

# The compound file is downloaded from
# https://github.com/ChunchuanLv/AMR_AS_GRAPH_PREDICTION/blob/master/data/joints.txt
#compound_file=data/AMR/amr_2.0_utils/joints.txt
#amr_dir=$1


python -u -m parser.preprocess ${amr_train_data}
python -u -m parser.preprocess ${drg_train_data}
python -u -m parser.preprocess ${eds_train_data}
python -u -m parser.preprocess ${ptg_train_data}
python -u -m parser.preprocess ${ucca_train_data}
python -u -m parser.preprocess ${amr_dev_data}
python -u -m parser.preprocess ${drg_dev_data}
python -u -m parser.preprocess ${eds_dev_data}
python -u -m parser.preprocess ${ptg_dev_data}
python -u -m parser.preprocess ${ucca_dev_data}
