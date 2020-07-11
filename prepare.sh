dataset=$1
python3 -u -m parser.extract --train_data ${dataset}
mv *_vocab ${dataset}/
# python3 encoder.py
# cat ${dataset}/*embed | sort | uniq > ${dataset}/glove.embed.txt
# rm ${dataset}/*embed
