
import scipy.io as sio
import pandas as pd
import numpy as np
from scipy.sparse import vstack

import scanpy as sc
import anndata
import loompy

samples = ['gem1','gem2','gem3','gem4','gem5','gem6','gem7','gem8']


data_path = "../counts/norman_crispr/"
out_path = "../counts/norman_crispr/loom/"

meta_path = "../metadata/"


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

fname = out_path+'allcrispr.loom'
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

#Read in scanpy metadata

# meta = pd.read_csv(meta_path+'norman_GSE133344_filtered_cell_identities.csv')

# pair = ['NegCtrl10_NegCtrl0__NegCtrl10_NegCtrl0','NegCtrl11_NegCtrl0__NegCtrl11_NegCtrl0','NegCtrl0_NegCtrl0__NegCtrl0_NegCtrl0']

# remain = np.unique(meta.guide_identity)
# remain = [[i] for i in remain if i not in pair]

# #All conditions/paired conditions
# assigns = remain + [pair]

# #Comment out below to not split up controls/samples
# assigns = [['NegCtrl10_NegCtrl0__NegCtrl10_NegCtrl0','NegCtrl11_NegCtrl0__NegCtrl11_NegCtrl0','NegCtrl0_NegCtrl0__NegCtrl0_NegCtrl0']]
# #assigns = [['NegCtrl0_ETS2__NegCtrl0_ETS2','ETS2_NegCtrl0__ETS2_NegCtrl0'],
# #['NegCtrl0_CNN1__NegCtrl0_CNN1','CNN1_NegCtrl0__CNN1_NegCtrl0']]

# #For each drug condition get cell barcodes/counts and save loom file
# for a in assigns:

# 	barcodes = list(meta['cell_barcode'][meta['guide_identity'].isin(a)])

# 	sfilt = [sNames.index(x) for x in barcodes]
# 	print('Condition: ', a)
# 	print('Sp. Filt:', len(sfilt))
# 	ufilt = [uNames.index(x) for x in barcodes]


# 	subS = allS.tocsr()[sfilt,:]
# 	subU = allU.tocsr()[ufilt,:]

# 	print(subS.shape)
# 	print(subU.shape)

# 	if subS.shape[0] > 0:
# 		#Save loom files in data_path
# 		names = '_'.join(a)
# 		fname = out_path+'crispr'+names+'.loom'

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























