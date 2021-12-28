df1 = pd.read_csv('D:\\Python Scripts\DWH\Q100_data_England_2016_2017.csv',encoding='cp1252')

df1 = df1.loc[:, ~df1.columns.str.contains('^Unnamed')]
df1.drop('MonthlyComments', inplace=True, axis=1)

df1.to_csv(r'D:\\Python Scripts\DWH\Q100_data_England_2016_2017.csv', index = False)

df1 = pd.read_csv('D:\\Python Scripts\DWH\Q100_data_England_2015_2016.csv',encoding='cp1252')

df1 = df1.loc[:, ~df1.columns.str.contains('^Unnamed')]
df1.drop('MonthlyComments', inplace=True, axis=1)

df1.to_csv(r'D:\\Python Scripts\DWH\Q100_data_England_2015_2016.csv', index = False)
#df1.drop('FacilityAddress', inplace=True, axis=1)
#df1['FacilityType'] = df1['FacilityType'].replace(['RDF, autoclave, MHT or similar'],'RDF- autoclave- MHT or similar')
#df1.drop('FacilityName', inplace=True, axis=1)
#df1.to_csv(r'D:\\Python Scripts\DWH\2015_2016.csv', index = False)
