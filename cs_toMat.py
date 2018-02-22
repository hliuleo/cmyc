#!/home/hliu/anaconda2/bin/python

import pandas as pd
import sys
import scipy.io as sio

resNum = 40

df = pd.read_table(sys.argv[1], sep='\s+', header=None)
df = df[[2,3,4,5,6,7]]
df.columns = ['HA', 'H', 'N', 'CA', 'CB', 'C']
shift = {col: df[col].values.reshape((len(df)/resNum, resNum)) for col in df.columns}
sio.savemat(sys.argv[2], shift)
