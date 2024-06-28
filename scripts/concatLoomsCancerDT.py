import scipy.io as sio
import pandas as pd
import numpy as np
from scipy.sparse import vstack

import scanpy as sc
import anndata
import loompy

samples = ['PC9D3Erl']


data_path = "../counts/cancer_dt/"
out_path = "../counts/cancer_dt/loom/"

#meta_path = "../metadata/"


#Read in S/U mtx and concatenate

#'/counts_unfiltered', 'spliced.mtx' ,'unspliced.mtx', 'spliced.genes.txt'
spliced =[]
unspliced = []

sNames = []
uNames = []

filtName = '/counts_filtered'#'/counts_unfiltered'

for i in range(len(samples)):
	samp = samples[i]

	s = sio.mmread(data_path+samp+filtName+'/spliced.mtx')
	spliced += [s]

	u = sio.mmread(data_path+samp+filtName+'/unspliced.mtx')
	unspliced += [u]

	sNames += [x+'-'+str(i+1) for x in list(pd.read_csv(data_path+samp+filtName+'/spliced.barcodes.txt',header=None)[0])]
	uNames += [x+'-'+str(i+1) for x in list(pd.read_csv(data_path+samp+filtName+'/unspliced.barcodes.txt',header=None)[0])]

#geneNames = np.array(list(pd.read_csv(data_path+samp+'/counts_unfiltered/spliced.genes.txt',header=None)[0]))

ds = loompy.connect(data_path+samp+filtName+'/adata.loom')
#ds = loompy.connect(data_path+samp+'/counts_filtered/adata.loom') #Only if ok with losing barcodes

geneNames = ds.ra['gene_name'] #np.array(list(pd.read_csv(data_path+samp+'/counts_unfiltered/spliced.genes.txt',header=None)[0]))
ds.close()

allS = vstack(spliced) # .toarray()
allU = vstack(unspliced) #.toarray()

print('Matrix sizes:')
print(allS.shape)
print(allU.shape)

print('Barcodes:')
print(len(sNames))
print(len(uNames))

fname = out_path+'all_cancer_dt.loom'
saveAdata = anndata.AnnData(
			X=allS,
			layers={
				'spliced': allS,
				'unspliced': allU
			},
			obs=pd.DataFrame({'barcode': np.array(sNames)},index=np.array(sNames)),
			var=pd.DataFrame({'gene_name': np.array(geneNames)},index=np.array(geneNames))
		)

saveAdata.write_loom(fname)