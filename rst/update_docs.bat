sphinx-apidoc -o . ..\adamspy
make html
Xcopy _build\html ..\docs /E /H