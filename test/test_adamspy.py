"""
"""
import os
import glob
from pathlib import Path
from tempfile import TemporaryDirectory
import time
import shutil
import unittest

from adamspy.adamspy import set_n_threads, get_n_threads, solve, XMT_PATTERN, modify_xmt_path, AviewError
from adamspy.aviewpy import run_commands, run_script, START_SCRIPT_NAMES

from test import TEST_ADM_FILE, EXISTING_MODEL_DIR, TEST_CMD_XMT


TEST_ADM_FILE_TO_CHANGE = os.path.join(os.path.split(TEST_ADM_FILE)[0], 'test_modified.adm')


class Test_RunCommands(unittest.TestCase):

    def setUp(self):
        return

    def test_run_commands_export(self):

        cmds = [
            'model create model=model_1',
            'marker create marker=.model_1.ground.marker_1',
            'file command write ent=.model_1 file="model_1.cmd"'
        ]

        with TemporaryDirectory() as twd_:
            twd = Path(twd_).resolve()
            run_commands(cmds, twd)

            self.assertTrue((twd / 'model_1.cmd').exists())

    def test_run_commands_raises_error(self):

        cmds = [
            'model create model=model_1',
            'marker create marker=.model_1.marker_1',
        ]
        with self.assertRaises(AviewError), TemporaryDirectory() as twd_:
            twd = Path(twd_).resolve()
            run_commands(cmds, twd)

    def test_run_commands_ignores_startup(self):
        
        cmds = [
            'model create model=model_1',
            'marker create marker=.model_1.ground.marker_1',
        ]

        with TemporaryDirectory() as twd_:
            twd = Path(twd_).resolve()

            for file in START_SCRIPT_NAMES:
                (twd / file).write_text(
                    f'var set var=tmp str=(eval(str_print("! ERROR: {file} not ignored!")))'
                )
            run_commands(cmds, twd)

    def tearDown(self):
        return


class Test_RunScript(unittest.TestCase):

    def setUp(self):
        return

    def test_run_script_export(self):

        cmds = [
            'model create model=model_1',
            'marker create marker=.model_1.ground.marker_1',
            'file command write ent=.model_1 file="model_1.cmd"'
        ]

        with TemporaryDirectory() as twd_:
            twd = Path(twd_).resolve()

            # Write the commands to a script
            (twd / 'script.cmd').write_text('\n'.join(cmds))
            
            # Run the script
            run_script((twd / 'script.cmd'), twd)
            
            # Ensure the model exists
            self.assertTrue((twd / 'model_1.cmd').exists())

    def test_run_script_cwd_implied(self):

        cmds = [
            'model create model=model_1',
            'marker create marker=.model_1.ground.marker_1',
            'file command write ent=.model_1 file="model_1.cmd"'
        ]

        with TemporaryDirectory() as twd_:
            twd = Path(twd_).resolve()

            # Write the commands to a script
            (twd / 'script.cmd').write_text('\n'.join(cmds))
            
            # Run the script
            run_script((twd / 'script.cmd'))
            
            # Ensure the model exists
            self.assertTrue((twd / 'model_1.cmd').exists())

    def test_run_script_raises_error(self):

        cmds = [
            'model create model=model_1',
            'marker create marker=.model_1.marker_1',
        ]
        with self.assertRaises(AviewError), TemporaryDirectory() as twd_:
            twd = Path(twd_).resolve()

            # Write the commands to a script
            (twd / 'script.cmd').write_text('\n'.join(cmds))

            run_script((twd / 'script.cmd'), twd)

    def test_run_script_preserves_log(self):

        cmds = [
            'model create model=model_1',
            'marker create marker=.model_1.ground.marker_1',
        ]
        with TemporaryDirectory() as twd_:
            twd = Path(twd_).resolve()

            # Write the commands to a script
            (twd / 'script.cmd').write_text('\n'.join(cmds))

            # Create a dummy log
            log_text = 'MUST PRESERVE THIS FILE'
            (twd / 'aview.log').write_text(log_text)

            run_script((twd / 'script.cmd'), twd)

            self.assertEqual((twd / 'aview.log').read_text(), log_text)

    def test_run_script_ignores_start_scripts(self):

        cmds = [
            'model create model=model_1',
            'marker create marker=.model_1.ground.marker_1',
        ]
        with TemporaryDirectory() as twd_:
            twd = Path(twd_).resolve()

            # Write the commands to a script
            (twd / 'script.cmd').write_text('\n'.join(cmds))

            for file in START_SCRIPT_NAMES:
                (twd / file).write_text(
                    f'var set var=tmp str=(eval(str_print("! ERROR: {file} not ignored!")))'
                )

            run_script((twd / 'script.cmd'), twd)

            self.assertListEqual(
                [(twd / f).read_text() for f in START_SCRIPT_NAMES],
                [f'var set var=tmp str=(eval(str_print("! ERROR: {f} not ignored!")))'
                 for f in START_SCRIPT_NAMES]
            )

    def tearDown(self):
        return


class Test_SetNThreads(unittest.TestCase):
    """
    """
    def setUp(self):
        # Delete the modified adm file if it exists
        try:
            os.remove(TEST_ADM_FILE_TO_CHANGE)
        except FileNotFoundError:
            pass

        # Copy the adm file
        shutil.copyfile(TEST_ADM_FILE, TEST_ADM_FILE_TO_CHANGE)

    def test_set_n_threads(self):
        """Tests that set_n_threads correctly changes the adm file.

        """
        set_n_threads(TEST_ADM_FILE_TO_CHANGE, 10)
        with open(TEST_ADM_FILE_TO_CHANGE, 'r') as fid:
            lines = fid.readlines()

        threads_line = lines[12336].strip()

        self.assertEqual(threads_line, ', NTHREADS = 10')

    def test_get_n_threads(self):
        """Tests that get_n_threads correctly gets the number of threads defined in an adm file.

        """
        n_threads = get_n_threads(TEST_ADM_FILE)
        self.assertEqual(n_threads, 4)

    def tearDown(self):
        # Delete the modified adm file if it exists
        try:
            os.remove(TEST_ADM_FILE_TO_CHANGE)
        except FileNotFoundError:
            pass


class Test_Solve(unittest.TestCase):
    """
    """
    def setUp(self):
        for file in glob.glob(os.path.join(EXISTING_MODEL_DIR, '*')):
            ext = os.path.splitext(file)[-1]
            if ext not in ['.acf', '.adm', '.xmt_txt']:
                try:
                    os.remove(file)
                except FileNotFoundError:
                    pass
                except PermissionError:
                    pass

    def test_solve_wait(self):
        """Tests that adamspy.adamspy.solve() works when wait=True

        """
        acf_file = glob.glob(os.path.join(EXISTING_MODEL_DIR, '*.acf'))[0]
        solve(acf_file, wait=True)
        res_files = glob.glob(os.path.join(EXISTING_MODEL_DIR, '*.res'))
        self.assertTrue(res_files != [])

    def test_solve_dont_wait(self):
        """Tests that adamspy.adamspy.solve() works when wait=False

        """
        acf_file = glob.glob(os.path.join(EXISTING_MODEL_DIR, '*.acf'))[0]
        solve(acf_file, wait=False)

        # Check that the res file isn't there yet
        res_files = glob.glob(os.path.join(EXISTING_MODEL_DIR, '*.res'))
        if res_files != []:
            self.fail('Solve did not wait!')

        # Wait 60 seconds for the res file to show up
        for _i in range(60):
            res_files = glob.glob(os.path.join(EXISTING_MODEL_DIR, '*.res'))
            if res_files != []:
                break
            time.sleep(1)

        self.assertTrue(res_files != [])

    def tearDown(self):
        for file in glob.glob(os.path.join(EXISTING_MODEL_DIR, '*')):
            ext = os.path.splitext(file)[-1]
            if ext not in ['.acf', '.adm', '.xmt_txt']:
                try:
                    os.remove(file)
                except FileNotFoundError:
                    pass
                except PermissionError:
                    pass


class Test_CMD(unittest.TestCase):
    """
    """
    def setUp(self):
        return

    def test_xmt_pattern(self):
        """
        """
        xmt_line = '   file_name = "FRS3EQ_case1_LAUL.xmt_txt"  &'
        match = XMT_PATTERN.match(xmt_line)

        self.assertTrue(bool(match))

    def test_modify_xmt_path(self):
        """
        """
        path_to_change_to = os.path.join('path', 'to', 'bogus.xmt_txt')
        original_path = modify_xmt_path(TEST_CMD_XMT, path_to_change_to)
        new_path = modify_xmt_path(TEST_CMD_XMT, original_path)

        self.assertListEqual([original_path, new_path], ['FRS3EQ_case1_LAUL.xmt_txt', path_to_change_to])

    def tearDown(self):
        return
