# Implementation of BERT4REC 

This repo contains a version of te model BERT4REC.

Original Paper: BERT4Rec: [Sequential Recommendation with BERT (Sun et al.)](https://arxiv.org/abs/1904.06690)
## Install
<details open>


Clone repo and install [requirements.txt](requirements.txt) 

```bash
git clone https://github.com/LeoCyclope/BERT4Rec  # clone
cd BERT4Rec
pip install -r requirements.txt  # install
```

</details>


## Inference


### The script *download_weights.sh* will only download the weights locally.
```
bash download_weights.sh
```

### To perform the inference

```
python inference.py
```

You can change the path of the model in the file: `common_utils/metadata.py` in the variable **init_weights**

### Disclaimer
For the purpose of this Demo, the model is stored on S3 with public access, models should have restricted access. Either through IAM, ACLs or VPN

## Training

### Data 

<details open>
<summary>Data Preparation</summary>

For the purpose of this demo, data are the Tensorflow records in the folder "Data" with the .tfrecord.

You can create your own *Dataset* class to integrate you own data.

On the first loading, data will be cached in a *data.cache* in the same folder as the data files for faster loading.
If data have changed, you can manually removed the *"data.cache* file.
</details>

<details open>
<summary>Launching Training</summary>

```
python training.py
```
</details>

## Testing
<details>
run the command:
```
python -m unittest tests.test_bert4rec
```
</details>


## Sources Used:
- [https://github.com/FeiSun/BERT4Rec](https://github.com/FeiSun/BERT4Rec)
- [https://github.com/jaywonchung/BERT4Rec-VAE-Pytorch/tree/f66f2534ebfd937778c7174b5f9f216efdebe5de](https://github.com/jaywonchung/BERT4Rec-VAE-Pytorch/tree/f66f2534ebfd937778c7174b5f9f216efdebe5de)
- [https://github.com/CVxTz/recommender_transformer](https://github.com/CVxTz/recommender_transformer)
- [https://github.com/jiwidi/Behavior-Sequence-Transformer-Pytorch](https://github.com/jiwidi/Behavior-Sequence-Transformer-Pytorch)