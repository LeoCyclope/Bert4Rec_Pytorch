docker run --rm --gpus all --env DEVICE=0 --env PATH_TO_RECORD=/workspace/Bert4Rec_Pytorch/data/ bert4recpytorch:v1 python /workspace/Bert4Rec_Pytorch/training.py