
import scipy.io as sio
import pandas as pd
import numpy as np
from scipy.sparse import vstack

import scanpy as sc
import anndata
import loompy

samples = ['SA08522','SA08523','SA08524','SA08525']


data_path = "../counts/gehring_nsc/"
out_path = "../counts/gehring_nsc/loom/"

meta_path = "../metadata/"


#Read in S/U mtx and concatenate

#'/counts_unfiltered', 'spliced.mtx' ,'unspliced.mtx', 'spliced.genes.txt'
spliced =[]
unspliced = []

sNames = []
uNames = []

for i in range(len(samples)):
	samp = samples[i]

	s = sio.mmread(data_path+samp+'/counts_unfiltered/spliced.mtx')
	spliced += [s]

	u = sio.mmread(data_path+samp+'/counts_unfiltered/unspliced.mtx')
	unspliced += [u]

	sNames += [x+'-'+str(i+1) for x in list(pd.read_csv(data_path+samp+'/counts_unfiltered/spliced.barcodes.txt',header=None)[0])]
	uNames += [x+'-'+str(i+1) for x in list(pd.read_csv(data_path+samp+'/counts_unfiltered/unspliced.barcodes.txt',header=None)[0])]

ds = loompy.connect(data_path+samp+'/counts_unfiltered/adata.loom')
geneNames = ds.ra['gene_name'] #np.array(list(pd.read_csv(data_path+samp+'/counts_unfiltered/spliced.genes.txt',header=None)[0]))
ds.close()

allS = vstack(spliced).toarray()
allU = vstack(unspliced).toarray()

print('Matrix sizes:')
print(allS.shape)
print(allU.shape)

print('Barcodes:')
print(len(sNames))
print(len(uNames))

#Save loom files in data_path
fname = out_path+'nsc_all.loom'

#Read in scanpy metadata
adata = anndata.read_h5ad(meta_path+'gehring_multiplex.h5ad')

barcodes = list(adata.obs_names)

sfilt = [sNames.index(x) for x in barcodes]
print('Sp. Filt:', len(sfilt))
ufilt = [uNames.index(x) for x in barcodes]


subS = allS[sfilt,:]
subU = allU[ufilt,:]

retAdata = anndata.AnnData(
	X=subS,
	layers={
		'spliced': subS,
		'unspliced': subU
	},
	obs=pd.DataFrame({'barcode': np.array(barcodes)},index=np.array(barcodes)),
	var=pd.DataFrame({'gene_name': np.array(geneNames)},index=np.array(geneNames))
)

retAdata.write_loom(fname)



# pairs = []
# start = -1

# #Every 3rd object paired with row below (conditions)
# j = 0
# while start < 83:
# 	if j % 4 == 0 and j !=0:
# 		start = start +15
# 		pairs += [start]
# 		j = j+1 
# 	else:
# 		start = start + 3
# 		pairs += [start]
# 		j = j+1 

# opppair = [i+12 for i in pairs]

# remain = range(0,96)
# remain = [i for i in remain if i not in pairs+opppair]

# #All conditions/paired conditions
# assigns = [[str(i)] for i in remain]
# assigns += [[str(x),str(x+12)] for x in pairs]

# #Comment out if not splitting up controls
# assigns = [['11'],['23']]

# #For each drug condition get cell barcodes/counts and save loom file
# for a in assigns:

# 	barcodes = list(adata[adata.obs['assignments'].isin(a)].obs_names)

# 	sfilt = [sNames.index(x) for x in barcodes]
# 	print('Condition: ', a)
# 	print('Sp. Filt:', len(sfilt))
# 	ufilt = [uNames.index(x) for x in barcodes]


# 	subS = allS[sfilt,:]
# 	subU = allU[ufilt,:]

# 	print(subS.shape)
# 	print(subU.shape)

# 	if subS.shape[0] > 0:
# 		#Save loom files in data_path
# 		names = '_'.join(a)
# 		fname = out_path+'nsc'+names+'.loom'

# 		#row_attrs = { "Gene": geneNames } #genes
# 		#col_attrs = { "Barcode": np.array(barcodes) } #cells

# 		retAdata = anndata.AnnData(
# 			X=subS,
# 			layers={
# 				'spliced': subS,
# 				'unspliced': subU
# 			},
# 			obs=pd.DataFrame({'Barcode': np.array(barcodes)},index=np.array(barcodes)),
# 			var=pd.DataFrame({'Gene': np.array(geneNames)},index=np.array(geneNames))
# 		)

# 		retAdata.write_loom(fname)























