pip freeze > requirements.txt
rmdir /S /Q dist
rmdir /S /Q build
rmdir /S /Q adamspy.egg-info
python setup.py sdist bdist_wheel
C:\Users\bthornt\AppData\Roaming\Python\Python36\Scripts\twine.exe upload dist/*
call _update_docs.bat