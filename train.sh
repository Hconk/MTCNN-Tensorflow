#!/bin/bash

export CUDA_VISIBLE_DEVICES=
# python ./prepare_data/gen_12net_data.py
# python ./prepare_data/gen_landmark_aug_12.py
# python ./prepare_data/gen_imglist_pnet.py
# python ./prepare_data/gen_PNet_tfrecords.py
export CUDA_VISIBLE_DEVICES=1
python ./train_models/train_PNet.py
python ./prepare_data/gen_hard_example.py
python ./prepare_data/gen_landmark_aug_24.py
python ./prepare_data/gen_imglist_rnet.py
python ./prepare_data/gen_RNet_tfrecords.py
python ./prepare_data/gen_hard_example_onet.py
python ./prepare_data/gen_landmark_aug_48.py
python ./prepare_data/gen_imglist_onet.py
python ./prepare_data/gen_ONet_tfrecords.py
python ./train_models/train_ONet.py

