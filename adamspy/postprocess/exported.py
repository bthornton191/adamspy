import pandas as pd

def import_spreadsheet(filename, output_type='dict'):
    """Reads data from a file generated in Adams View using File>Export>Spreadsheet.
    
    Parameters
    ----------
    filename : str
        Name of file.
    output_type : str
        Type of object to return.  Default is 'DataFrame' which returns a pandas `:obj:DataFrame` object.  You can also select 'dict'.

    Returns
    -------
    DataFrame or dict
        Pandas `:obj:Dataframe` if `output_type` is 'DataFrame' or `:obj:dict` if `output_type` is 'dict'

    """
    data = pd.read_csv(filename, sep='\\s+', quotechar='"', index_col=0, skiprows=6)

    new_column_map = {c_nm : c_nm.split('.')[-1] for c_nm in data.columns}
    
    data.rename(columns=new_column_map, inplace=True)         
    data.index.rename(data.index.name.split('.')[-1], inplace=True)

    if output_type.lower() == 'dict':
        data.reset_index(inplace=True)
        data = data.to_dict('list')

    return data
