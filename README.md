# BioASQ Task 6: Biomedical Information Extraction System

[![BioASQ Challenge](https://img.shields.io/badge/BioASQ-2025-blue.svg)](https://clef2025.clef-initiative.eu/index.php?page=Pages/Labs/BioASQ.html)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This repository contains the official implementation of a biomedical information extraction system for **BioASQ Task 6**, featuring state-of-the-art Named Entity Recognition (NER) and Relation Extraction (RE) models optimized for biomedical texts.

## Key Features

- **Dual-model Architecture**: 
  - **Biomedical NER Model**: Identifies key entities in medical literature
  - **Relation Extraction Model**: Detects binary or ternary relationships between entities
- **Optimized for Biomedical Texts**: Built on PubMedBERT with domain-specific pretraining
- **High Performance**: State-of-the-art results on BioASQ benchmark datasets
- **Production-Ready**: Easy integration with BioASQ pipeline systems

## Named Entity Recognition (NER) Subtask

The NER subtask is powered by the GLiNER architecture (https://arxiv.org/abs/2311.08526) and leverages the fine-tuned NuNer_Zero available on (https://huggingface.co/numind/NuNER_Zero).
Performance on dev.json:

| Metric     | Score     |
|------------|-----------|
| **Micro-Precision** | 80.17%  |
| **Micro-Recall**    | 69.47%  |
| **Micro-F1-Score**  | 74.44%  |


## Relation Extraction (RE) Subtask


The RE model is based on the PubMedBERT architecture (microsoft/BiomedNLP-BiomedBERT-base-uncased-abstract-fulltext). It is fine-tuned specifically for detecting and classifying relationships between biomedical entities.
Performance on dev.json:

- Binary Tag Based Relation Extraction

| Metric     | Score     |
|------------|-----------|
| **Micro-Precision** | 59.78%  |
| **Micro-Recall**    | 73.64%  |
| **Micro-F1-Score**  | 65.99%  |

- Ternary Tag Based Relation Extraction

| Metric     | Score     |
|------------|-----------|
| **Micro-Precision** | 81.00%  |
| **Micro-Recall**    | 35.22%  |
| **Micro-F1-Score**  | 49.09%  |

- Ternary Mention Based Relation Extraction

| Metric     | Score     |
|------------|-----------|
| **Micro-Precision** | 65.73%  |
| **Micro-Recall**    | 58.21%  |
| **Micro-F1-Score**  | 61.74%  |

## Installation

To set up the project on your local machine, follow these steps:

1. Clone the repository:
```bash
git clone https://github.com/Vezzero/ataupd2425-gainer.git
cd ataupd2425-gainer
```
2. Install dependencies:
Ensure you have Python installed (https://www.python.org/) version > 3.8. Then install the required packages:
```bash
pip install torch transformers tqdm scikit-learn spacy textattack gliner==0.1.12
```
3. Launch the Notebooks: 
Navigate through the repository to locate the relevant notebooks. Open and run them using Jupyter Notebook or JupyterLab to reproduce the experiments and evaluate model performance.

## Project Structure
```
├── Assets                  # Contains the datasets used in the project
│   ├── Annotations
│   ├── Articles
│   ├── merged_dataset.json
│   └── testmergednorel.json
├── NER Model               # Contains the NER model implementation and prediction code
│   └── nerimplementation.ipynb
├── RE Model                # Contains the RE model implementation and prediction code
│   └── reimplementation.ipynb
├── dataaugmentation.ipynb  # Notebook for dataset augmentation
├── datamanipulation.ipynb  # Notebook for data manipulation
└── evaluationMartinelli.ipynb  # Notebook for evaluating model predictions
├── runs                    # Contains the NER and RE runs of the subtasks
```
## Training Setup
To train the models and generate predictions the following GPU environments were utilized:

- Tesla T4 GPU Google Colab: (https://colab.research.google.com/)

- NVIDIA T4 x 2 GPU Kaggle: (https://www.kaggle.com/)

- 8x NVIDIA A40 GPU DEI Machines: (https://docs.dei.unipd.it/)

## Usage
The repository includes Jupyter notebooks that demonstrate how to:
- Train the models: Step-by-step guides to fine-tune both NER and RE models on PubMed datasets.
- Perform predictions: Scripts for predicting entities and relations in new datasets.
- Evaluate performance: Notebooks that facilitate comprehensive evaluation using metrics such as precision, recall, and F1-score.

## Contributors

Samuel Piron - MSc Student,  Computer Engineering,  University of Padua

## Licence

This project is licensed under the MIT License (https://opensource.org/license/MIT). 