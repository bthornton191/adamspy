import os
import unittest

from adamspy.postprocess.exported import import_spreadsheet

FILENAME = os.path.join(os.getcwd(), 'test', 'files', 'exported', 'lc4_drv_tq.csv')

class Test_Exported_DataFrame(unittest.TestCase):

    def setUp(self):
        self.data = import_spreadsheet(FILENAME, output_type='dataframe')

    def test_column_names(self):
        self.assertListEqual(list(self.data.columns), ['FX', 'FY', 'FZ', 'TX', 'TY', 'TZ', 'FMAG', 'TMAG'])
    
    def test_index_name(self):
        self.assertEqual(self.data.index.name, 'TIME')    

    def tearDown(self):
        return

class Test_Exported_Dict(unittest.TestCase):

    def setUp(self):
        self.data = import_spreadsheet(FILENAME, output_type='dict')

    def test_keys(self):
        self.assertListEqual([nm for nm in self.data.keys()], ['TIME', 'FX', 'FY', 'FZ', 'TX', 'TY', 'TZ', 'FMAG', 'TMAG'])

    def tearDown(self):
        return