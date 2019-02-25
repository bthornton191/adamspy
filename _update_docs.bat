pip uninstall -y adamspy
cd rst
sphinx-apidoc -f -o source ..\adamspy
call make html
cd ..
robocopy rst\build\html docs /e /mir
TIMEOUT  5
pip install adamspy
TIMEOUT  5
pip install --upgrade adamspy