"""Tests related to the DrillString class
"""

import unittest
import os
from test import *
os.environ['ADRILL_SHARED_CFG'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'adrill', 'adrill.cfg')
os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')
os.environ['ADAMS_LAUNCH_COMMAND'] = os.path.join('C:\\', 'MSC.Software', 'Adams', '2018', 'common', 'mdi.bat')
from adamspy import adripy #pylint: disable=wrong-import-position

class Test_DrillHole(unittest.TestCase):

    def setUp(self):
        # Create a test config file containing the test database
        adripy.create_cfg_file(TEST_CONFIG_FILENAME, [TEST_DATABASE_PATH, TEST_NEW_DATABASE_PATH])
        
        # Create a drill_hole object
        self.drill_hole = adripy.DrillHole(TEST_HOLE_NAME)

    def test_defaults_file_type(self):       
        """Tests that drill_hole.parameters['File_Type'] defaults as expected.        
        """
        value = self.drill_hole.parameters['File_Type']               
        expected_value = 'hole'
        self.assertEqual(value, expected_value)

    def test_defaults_centerline(self):       
        """Tests that drill_hole.parameters['Centerline'] defaults as expected.        
        """
        value = self.drill_hole.parameters['Centerline']               
        expected_value = [[],[],[]]
        self.assertEqual(value, expected_value)

    def test_defaults_wall_contact(self):       
        """Tests that drill_hole.parameters['Wall_Contact'] defaults as expected.        
        """
        drill_hole = adripy.DrillHole(TEST_HOLE_NAME)
        value = drill_hole.parameters['Wall_Contact']               
        expected_value = [[-1],[1e6],[1e3]]
        self.assertEqual(value, expected_value)
    
    def test_set_table(self):
        """Tests if drill_hole.set_table sets the table parameter correctly.        
        """
        drill_hole = adripy.DrillHole(TEST_HOLE_NAME)
        drill_hole.set_table('Centerline', TEST_HOLE_CENTERLINE)
        self.assertListEqual(drill_hole.parameters['Centerline'], TEST_HOLE_CENTERLINE)
    
    def test_modify_table(self):
        """Tests if drill_hole.modify_table modifies the table parameter correctly.        
        """
        drill_hole = adripy.DrillHole(TEST_HOLE_NAME)
        drill_hole.set_table('Centerline', TEST_HOLE_CENTERLINE)
        drill_hole.set_table('Diameter', TEST_HOLE_DIAMETER)
        drill_hole.set_table('Wall_Contact', TEST_HOLE_CONTACT)
        drill_hole.set_table('Wall_Friction', TEST_HOLE_FRICTION)
        drill_hole.modify_table('Wall_Friction', 1000, 10000, TEST_MODIFIED_HOLE_FRICTION)
        self.assertListEqual(drill_hole.parameters['Wall_Friction'], TEST_EXPECTED_MODIFIED_HOLE_FRICTION)
    
    def test_write_to_file(self):        
        """Tests that writing to file writes the expected text.        
        """        
        drill_hole = adripy.DrillHole(TEST_HOLE_NAME)
        drill_hole.set_table('Centerline', TEST_HOLE_CENTERLINE)
        drill_hole.set_table('Diameter', TEST_HOLE_DIAMETER)
        drill_hole.set_table('Wall_Contact', TEST_HOLE_CONTACT)
        drill_hole.set_table('Wall_Friction', TEST_HOLE_FRICTION)
        drill_hole.write_to_file(filename=TEST_NEW_HOLE_FILE)
        failures = check_file_contents(TEST_NEW_HOLE_FILE, TEST_EXPECTED_HOLE_FILE_TEXT)        
        self.assertListEqual(failures, [])
    
    def test_read_from_file_centerline(self):
        """Tests that reading from a file reads the expected centerline.        
        """
        drill_hole = adripy.DrillHole.read_from_file(TEST_EXISTING_HOLE_FILE)
        centerline_tvd = drill_hole.parameters['Centerline'][2][0:10]
        expected_centerline_tvd = [0, 252.0, 502.0, 752.0, 822.0, 842.0, 862.0, 882.0, 902.0, 922.0]
        self.assertListEqual(centerline_tvd, expected_centerline_tvd)
    
    def test_read_from_file_diameter(self):
        """Tests that reading from a file reads the expected diameter.        
        """
        drill_hole = adripy.DrillHole.read_from_file(TEST_EXISTING_HOLE_FILE)
        diameter = drill_hole.parameters['Diameter'][1]
        expected_diamter = [1.0835]
        self.assertListEqual(diameter, expected_diamter)

    def test_read_from_file_diameter_md(self):
        """Tests that reading from a file reads the expected md from the diameter table.        
        """
        drill_hole = adripy.DrillHole.read_from_file(TEST_EXISTING_HOLE_FILE)
        md = drill_hole.parameters['Diameter'][0]
        expected_diamter = [-1.0]
        self.assertListEqual(md, expected_diamter)

    def test_read_from_file_contact(self):
        """Tests that reading from a file reads the expected k from the diameter table.        
        """
        drill_hole = adripy.DrillHole.read_from_file(TEST_EXISTING_HOLE_FILE)
        contact = drill_hole.parameters['Wall_Contact'][1]
        expected_contact = [500000.0]
        self.assertListEqual(contact, expected_contact)

    def test_read_from_file_friction(self):
        """Tests that reading from a file reads the expected mu_s from the diameter table.        
        """
        drill_hole = adripy.DrillHole.read_from_file(TEST_EXISTING_HOLE_FILE)
        friction = drill_hole.parameters['Wall_Friction'][1]
        expected_friction = [0.9]
        self.assertListEqual(friction, expected_friction)

    def tearDown(self):
        os.remove(TEST_CONFIG_FILENAME)
        os.environ['ADRILL_USER_CFG'] = os.path.join(os.environ['USERPROFILE'], '.adrill.cfg')

        # Try removing the hole file that gets created
        try:
            os.remove(TEST_NEW_HOLE_FILE)
        except: #pylint: disable=bare-except
            pass
