# BioASQ Task 6: Biomedical Information Extraction System

[![BioASQ Challenge](https://img.shields.io/badge/BioASQ-2025-blue.svg)](https://clef2025.clef-initiative.eu/index.php?page=Pages/Labs/BioASQ.html)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

This repository contains the official implementation of our biomedical information extraction system for **BioASQ Task 6**, featuring state-of-the-art Named Entity Recognition (NER) and Relation Extraction (RE) models optimized for biomedical texts.

## Key Features

- **Dual-model Architecture**: 
  - **Biomedical NER Model**: Identifies key entities in medical literature
  - **Relation Extraction Model**: Detects ternary relationships between entities
- **Optimized for Biomedical Texts**: Built on PubMedBERT with domain-specific pretraining
- **High Performance**: State-of-the-art results on BioASQ benchmark datasets
- **Production-Ready**: Easy integration with BioASQ pipeline systems

## Installation

1. Clone repository:
```bash
git clone https://github.com/Vezzero/ataupd2425-gainer.git
cd ataupd2425-gainer
```
## Install dependencies

2. 
```bash
pip install torch transformers tqdm scikit-learn spacy gliner==0.1.12
python -m spacy download en_core_sci_sm
```

## Contributors: 

Samuel Piron - MSc student of Computer Engineering at the University of Padua

@misc{bioasq2025-task6,
  title={Advanced Biomedical Information Extraction for BioASQ Challenge},
  author={Your Name},
  year={2025},
  publisher={GitHub},
  howpublished={\url{https://github.com/Vezzero/ataupd2425-gainer}}
}

