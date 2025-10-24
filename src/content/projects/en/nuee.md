---
title: "`nuee` - Multivariate Analysis in Ecology"
description: "Analyse multivariée en écologie"
date: 2025-07-07
draft: false
demoURL: ""
repoURL: ""
image: "/images/projects/nuee/logo.png"
tech:
  - Python
  - Multivariate statistics
  - Ecology
---

## The Problem
Community ecology analysis requires specialized multivariate statistical methods — ordinations, diversity indices, permutation tests — that are well-established in the R ecosystem (particularly with the *vegan* package). However, researchers working in Python lack equivalent robust and comprehensive tools. Existing implementations are fragmented, incomplete, or difficult to use, forcing ecologists to switch between R and Python or re-implement complex methods. There is a need for a complete Python library that is faithful to numerical ecology standards and compatible with the modern Python scientific ecosystem.

## The Approach

`nuee` is a Python implementation inspired by the renowned R package *vegan*. It provides:

- **Ordination methods**: NMDS, RDA, CCA, PCA with environmental fitting (envfit) and Procrustes analysis
- **Diversity analyses**: Shannon, Simpson, Fisher's alpha indices, Renyi entropy, species richness, evenness, rarefaction
- **Dissimilarity measures**: Bray-Curtis, Jaccard, Euclidean, and 15+ other distances
- **Statistical tests**: PERMANOVA, ANOSIM, MRPP, Mantel test, beta dispersion
- **Integrated visualizations**: ordination plots, biplots, rarefaction curves, confidence ellipses
- **Classic datasets**: varespec, dune, BCI, mite with their environmental variables

The package maintains a familiar interface for *vegan* users while leveraging the Python scientific ecosystem (NumPy, SciPy, pandas, scikit-learn).

## Technical Implementation

- Pure Python library with standard dependencies (NumPy, SciPy, pandas, matplotlib, seaborn, scikit-learn)
- Formula interface via patsy for specifying statistical models
- Integration with statsmodels for advanced analyses
- Simple installation via pip or git clone
- Built-in datasets for learning and testing

## Current Status

Active project under development. Core ordination, diversity, and statistical testing functionalities are implemented. The package is usable for standard ecological analyses. Contributions are welcome to expand capabilities and improve compatibility with *vegan*.