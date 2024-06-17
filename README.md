# digital_pathology
workflow for digital pathology deep learning research

## data files

### 储存路径

**每一个project创建一个独立的文件夹**
- project
	- *datafiles*
	- slides
		- .svs + .xml
	- raw_patches
		- SIZE _?_\_*configs*
			- 5X
				- .h5
			- 10X
			- 20X
			- 40X
	- CN_patches
		- 与raw patches下级文件夹命名保持一致
	- features
		- SIZE _?_\_*configs*
		- - 5X
			- features.pkl -- 将slide_id, features, coords, 以字典形式保存起来
		- 10X
		- 20X
		- 40X
	- misc
		- ground_truth.csv
			- 包括slide_id, label, grouping
		- label_dict.pkl
			- 以字典形式保存slide_id:label,方便快速调用
		- data_demo.ipynb
			- 展示每一步的数据示例形式
	- *processing files*
	- preprocessing
		- extract_patches.py + .sh
		- ColorNormalization.py + .sh
			- 包含多种方法
		- feature_extraction.py + .sh
			- 包含多种feature extractor
	- train
		- dataloader.py
		- model.py
		- train.py
	- eval
	- visualization
		- 包含多种可视化方法
	- model application & evaluation

## slide --> patches

### 实现方式
#### supervised

- annotation + patching
#### semisupervised
- annotation + auto_mask_model_training + human correction
#### unsupervised

### 文件格式
#### input
- slide
- xml annotation file (supervised only)
#### output
- h5py文件
	- dataset1: *image array*, 以np.array的形式储存
	- dataset2: *coords*,以np.array的形式储存
## color normalization
### 实现方式

- ColorNormalization.py
### 文件格式

#### input
- 见上述
#### output
- 与上述同
## feature extraction

### 实现方式

- feature_extraction.py
### 文件格式
#### input
- 见上述
#### output
- pkl文件,以字典形式保存数据
	- slide_id:
		- features:
		- coords:
