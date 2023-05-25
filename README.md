## ModelNet40-C integration of Point Transformer

To install the necessary requirements, run the following command from the root folder.
`pip -r requirements.txt`

Download the trained checkpoints from the following google drive [link](https://drive.google.com/drive/folders/1C4lgDFtn4yJxlH0FbGsx6PLh-30R5b8F?usp=sharing).

To download the ModelNet40 data run the following from the root directory:
`./download.sh modelnet40`

To download the ModelNet40-C data, run the following - 

`./download.sh modelnet40_c`


To run inference for Point Transformer checkpoints on the clean ModelNet40 data run the following - 

`python main.py --output <output_txt_file> --entry test --exp-config configs/ptv1_test_clean.yaml --model_path <model_checkpoint_path`

To run inference for Point Transformer checkpoints on the corrupted ModelNet40-C data run the following - 
`python main.py --output <output_txt_file> --entry test --exp-config configs/ptv1_test.yaml --model_path <model_checkpoint_path> --corruption <corruption_type> --severity <severity_level>`


* * *

## Training

For training on the ModelNet40 data, with different data augmentations run the following -

`python main.py --exp-config <config_yaml`

Different config_yaml files for different data augmentations are the following
- **Original:** configs/ptv1_run1.yaml
- **PointCutMix-K:** configs/cutmix/ptv1_k.yaml
- **PointCutMix-R:** configs/cutmix/ptv1_r.yaml
- **PointMixup:** configs/mixup/ptv1.yaml
- **RSMix:** configs/rsmix/ptv1.yaml

* * *
## Contributions

- **Debanjan:** main.py, dataloader.py, all_utils.py, aug_utils.py, configs.py and ran the trainning experiments on NVIDIA Tesla M40 GPU
- **Charchit:** Worked on models/pointTransformerv1.py, models/\_\_init\_\_.py, Point_Transformers/train_cls.py, Point_Transformers/dataset.py, Point_Transformers/pointnet_util.py
- **Harsha:** Worked on scripts/data.csv, KPconv/datasets/ModelNet40.py, KPconv/datasets/common.py, models/kpconv.py, KPconv/utils/trainer.py, scripts/modelnet40.py, KPconv/utils/tester.py 