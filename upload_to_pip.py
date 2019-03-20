#! env\Scripts\Python.exe
if __name__ == '__main__':
    import os
    import pkg
    if input('Have you staged your changes? (y/n)').lower().startswith('y'):
        if input('Have you updated the version number? The current version number is {} (y/n)'.format(pkg.version)).lower().startswith('y'):
            os.system(r'pip freeze > requirements.txt')
            os.system(r'rmdir /S /Q dist')
            os.system(r'rmdir /S /Q build')
            os.system(r'rmdir /S /Q adamspy.egg-info')
            os.system(r'python setup.py sdist bdist_wheel')
            os.system(r'twine upload dist/*')
            os.system(r'call _update_docs.bat')
            os.system('git add -u docs/* rst/*')
            os.system('git commit -m "{}"'.format(pkg.version_notes))
            os.system('git tag v{}'.format(pkg.version))