#!/bin/bash
DIR=../datasets/imagenet-r256/train/train

ARCH="alexnet"

DEVICE=3
CKPT='./self-label_models/alexnet-10x3k-wRot.pth'
EXP='./eval/alexnet'
mkdir -p ${EXP}

python3 eval_linear_probes.py \
            --arch=${ARCH} \
            --modelpath=${CKPT}\
            --datadir=${DIR}\
            --ckpt-dir=${EXP}/checkpoints-eval \
            --name=${EXP}-evallinear \
            --device=${DEVICE}