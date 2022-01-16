#!/usr/bin/env bash

# set up environment
#conda env create -f environment.yml
#source activate kinetics
#pip install --upgrade youtube-dl

DATASET=$1
ANNOT_NAME=$2
if [ "$DATASET" == "survai_var_mk1" ]; then
        echo "We are processing $DATASET"
else
        echo "Bad Argument, we only support survai_var_mk1"
        exit 0
fi



DATA_DIR="../../../data/${DATASET}"

ANNO_DIR="../../../data/${DATASET}/annotations"
python download.py ${ANNO_DIR}/${ANNOT_NAME}_train.csv ${DATA_DIR}/videos_train
echo "dfgwefg"
python download.py ${ANNO_DIR}/${ANNOT_NAME}_val.csv ${DATA_DIR}/videos_val

#source deactivate kinetics
#conda remove -n kinetics --all
