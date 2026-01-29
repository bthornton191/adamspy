# adamspy
![PyPI - Downloads](https://img.shields.io/pypi/v/adamspy)
![PyPI - Downloads](https://img.shields.io/pypi/dm/adamspy)

adamspy is a python package designed for CAE analysts who use [Adams](https://links.savvyanalyst.xyz/adams) to 
automate manipulation of files and data outside of the Adams environment.


> [!TIP]
> See [aviewpy](https://github.com/bthornton191/aviewpy) for a library that workis _inside_ the Adams View environment.

## Installation
```
pip install adamspy
```

## Setting Environment variables
Before importing adamspy into your python script you need to set some environment variables to allow adamspy to communicate with your adams installation. Here are the the environment variables you need to set.

|Variable              | Value                                                                                         |           |
|----------------------|-----------------------------------------------------------------------------------------------|-----------|
|ADRILL_USER_CFG       | Full path to the user adrill cfg file *(e.g. C:\users\user_name.adrill.cfg)*                  | Optional  |
|ADRILL_SHARED_CFG     | Full path to the shared adrill cfg file *(e.g. C:\MSC.Software\Adams\2018\adrill\adrill.cfg)* | Optional  |
|ADAMS_LAUNCH_COMMAND  | Full path to the adams launch command *(e.g. C:\MSC.Software\Adams\2018\common\mdi.bat)*      |           |

## Usage

The `adamspy.postprocess` package and its submodules likely contain the most useful tools in this library. 

Here is an example of getting results from an Adams results .res file
```python
from adamspy.postprocess.ppt import get_results
result_file = 'example.res'
t_min = 70
t_max = 80
reqs_to_get = {}
reqs_to_get['MSE'] = ['Instantaneous_Bottom_MSE', 'Filtered_Surface_MSE']
reqs_to_get['ROP_controls'] = ['Command_ROP', 'True_WOB']
requests, units = get_results(result_file, reqs_to_get, t_min, t_max)
```

## Adams Drill

The `adamspy.adripy` package contains tools for automating Adams drill.

> [!NOTE]
> Adams Drill was discontinued in 2023 

Please see the documentation here:
https://bthornton191.github.io/adamspy/#
