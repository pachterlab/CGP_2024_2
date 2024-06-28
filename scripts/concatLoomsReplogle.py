
import scipy.io as sio
import pandas as pd
import numpy as np
from scipy.sparse import vstack

import scanpy as sc
import anndata
import loompy

samples = ['lane1','lane2','lane3','lane4','lane5','lane6']


data_path = "../counts/replogle_crispr/"
out_path = "../counts/replogle_crispr/loom/"

meta_path = "../metadata/"


#Read in S/U mtx and concatenate

#'/counts_unfiltered', 'spliced.mtx' ,'unspliced.mtx', 'spliced.genes.txt'
spliced =[]
unspliced = []

sNames = []
uNames = []

for i in range(len(samples)):
	samp = samples[i]

	# s = sio.mmread(data_path+samp+'/counts_unfiltered/spliced.mtx')
	# spliced += [s]

	# u = sio.mmread(data_path+samp+'/counts_unfiltered/unspliced.mtx')
	# unspliced += [u]

	# sNames += [x+'-'+str(i+1) for x in list(pd.read_csv(data_path+samp+'/counts_unfiltered/spliced.barcodes.txt',header=None)[0])]
	# uNames += [x+'-'+str(i+1) for x in list(pd.read_csv(data_path+samp+'/counts_unfiltered/unspliced.barcodes.txt',header=None)[0])]
	ds = loompy.connect(data_path+samp+'/counts_unfiltered/adata.loom')
	s = ds.layers['spliced'].sparse().T
	spliced += [s]

	u = ds.layers['unspliced'].sparse().T
	unspliced += [u]

	bars = ds.ca['barcode']
	sNames += [x+'-'+str(i+1) for x in list(bars)]
	uNames += [x+'-'+str(i+1) for x in list(bars)]

	ds.close()

#geneNames = np.array(list(pd.read_csv(data_path+samp+'/counts_unfiltered/spliced.genes.txt',header=None)[0]))
ds = loompy.connect(data_path+samp+'/counts_unfiltered/adata.loom')
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
# saveAdata = anndata.AnnData(
# 			X=allS,
# 			layers={
# 				'spliced': allS,
# 				'unspliced': allU
# 			},
# 			obs=pd.DataFrame({'barcode': np.array(sNames)},index=np.array(sNames)),
# 			var=pd.DataFrame({'gene_name': np.array(geneNames)},index=np.array(geneNames))
# 		)

# saveAdata.write_loom(fname)


#Read in metadata

meta = pd.read_csv(meta_path+'GSM4367984_exp6.cell_identities.csv')
meta['guide_identity'] = [i+'_'+j for i,j in zip(meta.A, meta.B)] #Make global identity strings/labels


pair = ['sgPMVKa_sgFDPSb','sgPMVKa_sgNegCtrl3b','sgNegCtrl02093a_sgFDPSb','sgHUS1_2a_sgFDPS_2b','sgHUS1_2a_sgNegCtrl3b',
'sgNegCtrl02093a_sgFDPS_2b','sgNegCtrl02093a_sgNegCtrl3b','sgNegCtrl4a_sgNegCtrl3b','sgNegCtrl8a_sgNegCtrl3b',
'sgNegCtrl5a_sgNegCtrl3b','sgNegCtrl1a_sgNegCtrl3b','sgNegCtrl9a_sgNegCtrl3b']

#['sgNegCtrl02093a_sgNegCtrl3b','sgNegCtrl4a_sgNegCtrl3b','sgNegCtrl8a_sgNegCtrl3b','sgNegCtrl5a_sgNegCtrl3b','sgNegCtrl1a_sgNegCtrl3b','sgNegCtrl9a_sgNegCtrl3b']
#pair = []

remain = np.unique(meta.guide_identity)
remain = [[i] for i in remain if i not in pair]

#All conditions/paired conditions
assigns = remain #+ [pair]

#Comment out below to not split up controls
#assigns = [['sgNegCtrl02093a_sgNegCtrl3b'],['sgNegCtrl4a_sgNegCtrl3b'],['sgNegCtrl8a_sgNegCtrl3b'],['sgNegCtrl5a_sgNegCtrl3b'],
#['sgNegCtrl1a_sgNegCtrl3b'],['sgNegCtrl9a_sgNegCtrl3b']]

#Comment out to split up controls
assigns = [pair]

#For each drug condition get cell barcodes/counts and save loom file
for a in assigns:

	barcodes = list(meta['cell_barcode'][meta['guide_identity'].isin(a)])

	sfilt = [sNames.index(x) for x in barcodes]
	print('Condition: ', a)
	print('Sp. Filt:', len(sfilt))
	ufilt = [uNames.index(x) for x in barcodes]


	subS = allS.tocsr()[sfilt,:]
	subU = allU.tocsr()[ufilt,:]

	print(subS.shape)
	print(subU.shape)

	if subS.shape[0] > 0:
		#Save loom files in data_path
		names = '_'.join(a)
		#fname = out_path+'crispr'+names+'.loom'

		#row_attrs = { "Gene": geneNames } #genes
		#col_attrs = { "Barcode": np.array(barcodes) } #cells

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























