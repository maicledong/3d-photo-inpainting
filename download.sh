#!/bin/sh

echo "downloading model weights ..."
mkdir checkpoints
gdown --id 1CaI42qVmOXBueZRWxq8FigCaQRut_Wsf -O checkpoints/color-model.pth
gdown --id 1-3E9M5x1E51g9lROYcbfAFZvk-Ukt1Mh -O checkpoints/depth-model.pth
gdown --id 1-ASUII_JW-k6UZ36-vHrCKar_2MbtWI8 -O checkpoints/edge-model.pth
gdown --id 1-FX3FMLnM9NLDjVnaO_HEYqxPijI58Kf -O MiDaS/model.pt

echo "cloning from BoostingMonocularDepth ..."
git clone https://github.com/DongMaicle/BoostingMonocularDepth.git
mkdir -p BoostingMonocularDepth/pix2pix/checkpoints/mergemodel/

echo "downloading mergenet weights ..."
gdown --id 1-HY7AQahL1uu3yFlxesayU1e4vpkszRR -O BoostingMonocularDepth/pix2pix/checkpoints/mergemodel/latest_net_G.pth

echo "downloading MiDaS weights ..."
gdown --id 1-MPcg-apVtKqZwh2_WEVI5pc4b_uHVLd -O BoostingMonocularDepth/midas/model.pt
