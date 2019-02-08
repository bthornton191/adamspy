cd rst
sphinx-apidoc -o . ..\adamspy
cd ..
call rst\make html
robocopy rst\_build\html docs /e /mir
