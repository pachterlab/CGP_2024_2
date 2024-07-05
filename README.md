# Stochastic Modeling of Biophysical Responses to Perturbation

Notebooks for reproducing all figures and analysis of simulated and single-cell datasets in the paper. All saved/processed data used for analysis can be found on [CaltechData](https://data.caltech.edu/search?q=%20%2Btara%20%2Bchari%20%2Bstochastic&l=list&p=1&s=10&sort=bestmatch). Figure created with BioRender.com.
<div align="center"><img src="https://github.com/pachterlab/CGP_2024_2/blob/main/intro_fig.png" width=600/></div>

## Getting Started
<div align="center">

<b>------ Tutorial for Inferring Condition-Specific Kinetics -----</b>

See the [`condition_kinetics_example.ipynb`](https://github.com/pachterlab/CGP_2024_2/blob/main/condition_kinetics_example.ipynb)

</div>

<div align="center">

<b>------ Tutorial for Predicting Kinetics in Combined Conditions -----</b>

See the [`combinatorial_prediction_example.ipynb`](https://github.com/pachterlab/CGP_2024_2/blob/main/combinatorial_prediction_example.ipynb)

</div>

<div align="center">

<b>------ Tutorial for Clustering Perturbed Populations -----</b>

See the [`perturbation_populations_example.ipynb`](https://github.com/pachterlab/CGP_2024_2/blob/main/perturbation_populations_example.ipynb)

</div>



<div align="center">
   
<b>------ Tutorial in generating U and S counts -----</b>
   
See the [`get_data_example_notebook.ipynb`](https://github.com/tarachari3/CGP_2023/blob/main/get_data_example_notebook.ipynb).

</div>


For notebooks that run on Google Colab, you will see the Colab link included at the top of the notebook. Just click on the [![Open In Collab](https://colab.research.google.com/assets/colab-badge.svg)](https://colab.research.google.com) symbol.

An introduction to using Google Colab can be found [here](https://colab.research.google.com). Briefly, run each code cell by selecting the cell and executing Command/Ctrl+Enter.

```
#To install Monod (and meK-Means)

pip install monod

import monod
from monod import mminference #Function implementing meK-Means algorithm
```

## Related Links

[meK-Means tutorial](https://monod-examples.readthedocs.io/en/latest/) for biophysical clustering of multimodal data.

All analyses utilize the [Monod](https://monod-examples.readthedocs.io/en/latest/) package for single-cell, CME-based inference.

## Repo Directory Contents
1) **notebooks**
    * Jupyter notebooks for all analyses, with relevant main Fig or suppFig denoted.
   
3) **scripts**
    * Preprocessing scripts to convert FASTQs to loom files with U and S counts
    * For each dataset, processing order is fetch.sh --> count.sh --> concatLooms.py

5) **metadata** 
    * Metadata files for datasets analyzed.
  
6) **reference** 
    * Gene length transcriptome references for *Monod*

7) **results**
    * Saved results from parameter prediction, HOMER analysis, and genome location analysis.



