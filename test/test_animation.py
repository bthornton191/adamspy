import os
import unittest

from adamspy.postprocess.animation import create_animation
from adamspy.postprocess import _get_model_name_from_cmd

from test import TEST_EXISTING_GENERIC_CMD_MODEL, TEST_EXISTING_GENERIC_RES_FILE, TEST_EXISTING_GENERIC_RES_FILE_ANALYSIS_NAME

class Test_Animation(unittest.TestCase):

    def setUp(self):        
        self.anim_file = create_animation(TEST_EXISTING_GENERIC_CMD_MODEL, TEST_EXISTING_GENERIC_RES_FILE, _get_model_name_from_cmd(TEST_EXISTING_GENERIC_CMD_MODEL), TEST_EXISTING_GENERIC_RES_FILE_ANALYSIS_NAME)

    def test_animation_file_created(self):
        self.assertTrue(os.path.isfile(self.anim_file))

    def tearDown(self):
        return
