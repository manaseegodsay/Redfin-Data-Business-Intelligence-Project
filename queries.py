def load_data():
   return pd.read_csv('nyc-rolling-sales-processed.csv')

def match_query(return_col = 'all', **condition):
    '''
    only 'and' precise query
    :param condition: 
    :return: 
    '''
    extract = pd.DataFrame(data)
    for (var,value) in condition.items():
        extract = extract.loc[extract[str(var)] == value,:]
    if return_col != 'all':
        extract = extract.loc[:,return_col]
    return extract



if __name__ == '__main__':
    import numpy as np
    import pandas as pd

    data = load_data()
    temp = match_query(['STATE'], COMMISSION = 0, STATE = 'Pending')
    print(data.columns)