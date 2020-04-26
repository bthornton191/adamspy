import os
import unittest

from numpy import nan


from adamspy.postprocess.mode_tables import parse_table_file, _parse_table_lines


MODE_TXT_FILE = os.path.join(os.getcwd(), 'test', 'files', 'mode_tables', 'mode_table.txt')

TABLE_LINES = [
    '                                                                 Normalized coordinates in this mode                                                 \n',
    '               +-------------------------------------------------------------------------------------------------------------------------------------+\n',
    '               |           X                     Y                     Z                    RX                    RY                    RZ           |\n',
    '               |  magnitude  phase      magnitude  phase      magnitude  phase      magnitude  phase      magnitude  phase      magnitude  phase     |\n',
    '               +-------------------------------------------------------------------------------------------------------------------------------------+\n',
    '  PART/2       |  3.490e-09  2.181e+00  1.609e-09  1.015e+01  4.826e-13  5.270e+01  1.883e-12 -1.681e+02  4.752e-12 -4.182e+01  9.927e-17  4.149e+01 | model.shaft_1_elem1\n',
    '  PART/3       |  4.064e-09 -7.047e+00  1.973e-09  1.225e+01  6.379e-11  7.207e+01  1.021e-12 -1.248e+02  1.892e-12 -7.675e+01  1.039e-16  3.957e+01 | model.shaft_1_elem2\n',
    '  PART/4       |  3.711e-09 -1.228e+01  1.944e-09  2.182e+01  7.152e-11  8.329e+01  2.273e-12 -4.452e+01  3.707e-12 -1.719e+02  9.092e-17 -1.172e+01 | model.shaft_1_elem3\n',
    '  PART/5       |  2.411e-09 -1.895e+01  1.642e-09  4.524e+01  7.806e-11  8.771e+01  3.859e-12 -2.801e+01  6.785e-12  1.758e+02  5.686e-16  1.386e+02 | model.shaft_1_elem4\n',
    '  PART/6       |  7.192e-10 -5.374e+01  1.552e-09  8.234e+01  7.814e-11  8.782e+01  4.034e-12 -1.374e+01  7.679e-12  1.723e+02  4.332e-15 -5.465e+01 | model.shaft_1_elem5\n',
    '  PART/7       |  1.369e-09 -1.664e+02  1.718e-09  1.137e+02  7.149e-11  8.322e+01  3.136e-12  1.490e+01  6.132e-12  1.715e+02  4.635e-15  1.526e+02 | model.shaft_1_elem6\n',
    '  PART/8       |  2.503e-09 -1.757e+02  1.672e-09  1.380e+02  6.370e-11  7.215e+01  3.077e-12  6.518e+01  3.173e-12  1.789e+02  5.369e-15  4.861e+01 | model.shaft_1_elem7\n',
    '  PART/9       |  2.971e-09 -1.733e+02  1.391e-09  1.695e+02  2.204e-13  5.919e+01  3.917e-12  9.161e+01  1.627e-12 -1.177e+02  4.157e-15 -1.063e+02 | model.shaft_1_elem8\n',
    '  PART/10      |  1.913e-01  4.807e+00  1.913e-01  9.482e+01  4.003e-09 -1.061e+02  1.530e-03 -8.518e+01  1.530e-03  4.808e+00  1.078e-14 -6.498e+01 | model.shaft_2_elem1\n',
    '  PART/11      |  5.560e-01  2.710e+00  5.560e-01  9.272e+01  3.954e-09 -1.025e+02  1.343e-03 -9.101e+01  1.343e-03 -1.017e+00  2.071e-14  1.361e+02 | model.shaft_2_elem2\n',
    '  PART/12      |  8.425e-01  8.864e-01  8.425e-01  9.089e+01  3.911e-09 -1.139e+02  9.176e-04 -9.405e+01  9.178e-04 -4.049e+00  2.496e-14 -4.078e+00 | model.shaft_2_elem3\n',
    '  PART/13      |  1.000e+00  0.000e+00  9.999e-01  9.000e+01  4.043e-09 -1.022e+02  3.256e-04 -9.531e+01  3.257e-04 -5.298e+00  1.874e-14 -1.781e+02 | model.shaft_2_elem4\n',
    '  PART/14      |  1.000e+00  1.128e-02  9.999e-01  9.001e+01  4.018e-09 -1.062e+02  3.259e-04  8.449e+01  3.258e-04  1.745e+02  9.462e-15 -5.969e+01 | model.shaft_2_elem5\n',
    '  PART/15      |  8.425e-01  9.203e-01  8.425e-01  9.092e+01  3.790e-09 -1.078e+02  9.178e-04  8.591e+01  9.178e-04  1.759e+02  5.470e-15  3.705e+01 | model.shaft_2_elem6\n',
    '  PART/16      |  5.560e-01  2.766e+00  5.559e-01  9.276e+01  3.832e-09 -1.041e+02  1.343e-03  8.900e+01  1.343e-03  1.790e+02  1.228e-14  9.788e+01 | model.shaft_2_elem7\n',
    '  PART/17      |  1.913e-01  4.880e+00  1.913e-01  9.488e+01  4.003e-09 -1.062e+02  1.530e-03  9.488e+01  1.530e-03 -1.751e+02  9.069e-15 -8.813e+01 | model.shaft_2_elem8\n',
    '               +-------------------------------------------------------------------------------------------------------------------------------------+\n',
    '\n'
]

class Test_ModeTables(unittest.TestCase):

    def setUp(self):
        self.modal = parse_table_file(MODE_TXT_FILE)

    def test_kinetic_energy(self):        
        self.assertEqual(self.modal.modes[20].kinetic_energy['Modal'][0], nan)

    def tearDown(self):
        return

class Test_ParseTableLines(unittest.TestCase):

    def setUp(self):
        self.table = _parse_table_lines(TABLE_LINES)

    def test_parse_table_lines_column_names(self):
        expected_names = ['solver_name', 'X_magnitude', 'X_phase', 'Y_magnitude', 'Y_phase', 'Z_magnitude', 'Z_phase', 'RX_magnitude', 'RX_phase', 'RY_magnitude', 'RY_phase', 'RZ_magnitude', 'RZ_phase', 'view_name']
        actual_names = list(self.table.columns)
        self.assertListEqual(actual_names, expected_names)

    def test_parse_table_lines_solver_names(self):
        expected_names = ['PART/2', 'PART/3', 'PART/4', 'PART/5', 'PART/6', 'PART/7', 'PART/8', 'PART/9', 'PART/10', 'PART/11', 'PART/12', 'PART/13', 'PART/14', 'PART/15', 'PART/16', 'PART/17']
        actual_names = list(self.table.solver_name)
        self.assertListEqual(actual_names, expected_names)
    
    def test_parse_table_lines_xmag(self):
        expected_mags = [3.4899999999999997e-09, 4.064e-09, 3.7109999999999997e-09, 2.411e-09, 7.192e-10, 1.369e-09, 2.503e-09, 2.9709999999999998e-09, 0.1913, 0.556, 0.8425, 1.0, 1.0, 0.8425, 0.556, 0.1913]
        actual_mags = list(self.table.X_magnitude)
        self.assertListEqual(actual_mags, expected_mags)

    def tearDown(self):
        return