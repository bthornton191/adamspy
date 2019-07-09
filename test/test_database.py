"""Tests related to the adripy.database module

"""
import unittest
import os
import shutil
from test import *

from adamspy.adripy import database


class Test_Database(unittest.TestCase):

    def setUp(self):
        # Try to delete the temporary database just in case it's already there
        try:
            shutil.rmtree(TEST_BAD_REFS_CDB_PATH + '.tmp')
        except FileNotFoundError:
            pass

        # Copy the bad refs database to a temporary database
        shutil.copytree(TEST_BAD_REFS_CDB_PATH, TEST_BAD_REFS_CDB_PATH + '.tmp')
        
    def test_replace_old_cdb_paths_in_string(self):
        """Tests that adripy.database.replace_old_cdb_paths_in_string produces the expected string file.

        """
        string_file = os.path.join(TEST_BAD_REFS_CDB_PATH + '.tmp', 'drill_strings.tbl', 'test_string.str')
        database.replace_old_cdb_paths_in_string(string_file, TEST_BAD_REF, TEST_BAD_REF_NEW_CDB)

        failures = check_file_contents(string_file, TEST_EXPECTED_STRING_AFTER_BAD_REF_REPLACE)

        self.assertListEqual(failures, [])

    def test_fix_strings_in_cdb(self):
        """Tests that adripy.database.fix_strings_in_cdb produces the expected string files.

        """
        database.fix_strings_in_cdb(TEST_BAD_REFS_CDB_PATH + '.tmp', old_cdb_path=TEST_BAD_REF, cdb_name=TEST_BAD_REF_NEW_CDB)
        
        # Check the string file contents
        string_file = os.path.join(TEST_BAD_REFS_CDB_PATH + '.tmp', 'drill_strings.tbl', 'test_string.str')
        failures = check_file_contents(string_file, TEST_EXPECTED_STRING_AFTER_BAD_REF_REPLACE)

        self.assertListEqual(failures, [])

    def tearDown(self):
        # Try to delete the temporary database
        try:
            shutil.rmtree(TEST_BAD_REFS_CDB_PATH + '.tmp')
        except FileNotFoundError:
            pass
