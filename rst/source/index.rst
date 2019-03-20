.. adamspy documentation master file, created by
   sphinx-quickstart on Fri Feb  8 08:18:51 2019.
   You can adapt this file completely to your liking, but it should at least
   contain the root `toctree` directive.

===================================
Welcome to adamspy's documentation!
===================================

adamspy is a python package designed for CAE analysts who use 
`Adams <http://www.mscsoftware.com/product/adams>`_ to automate 
manipulation of files and data 
**outside of the Adams environment** [#f1]_ .  This project is 
currently heavily focused on automation of tasks involving 
`Adams Drill <http://documents.mscsoftware.com/sites/default/files/tk_adams-drill-string-analysis_ltr_w.pdf>`_.
Eventually the project should be expanded to other Adams tools.

.. todo::
    Document aviewpy and link to it here.

Getting Started
================

Requirements
------------
* Python 3.6
* Adams View *(2018 or later)*
* Adams Drill *(required to use the adamspy.adripy module)*

Installation
-------------

You can do a direct install via pip by using:

.. code-block:: cmd

    > pip install adamspy

Setting Environment variables
-----------------------------
Before importing adamspy into your python script you need to set 
some environment variables to allow adamspy to communicate with 
your adams installation.  Here are the the environment variables 
you need to set.

====================  ===========================================================================================  
Variable              Value        
====================  ===========================================================================================  
ADRILL_USER_CFG       Full path to the user adrill cfg file *(e.g. C:\\users\\user_name\\.adrill.cfg)*          
ADRILL_SHARED_CFG     Full path to the shared adrill cfg file *(e.g. C:\\MSC.Software\\Adams\\2018\\adrill\\adrill.cfg)*
ADAMS_LAUNCH_COMMAND  Full path to the adams launch command *(e.g. C:\\MSC.Software\\Adams\\2018\\common\\mdi.bat)*
====================  ===========================================================================================

**If you don't know how to set environment variables** you can 
set them directly in your python script using ``os.environ`` 
as follows:

.. code-block:: python

    import os
    os.environ['ADRILL_USER_CFG'] = 'C:\\users\\user_name\\.adrill.cfg'
    os.environ['ADRILL_SHARED_CFG'] = 'C:\\MSC.Software\\Adams\\2018\\adrill\\adrill.cfg'
    os.environ['ADAMS_LAUNCH_COMMAND'] = 'C:\\MSC.Software\\Adams\\2018\\common\\mdi.bat'

Note: The values above are just for example.  Make sure you use 
the correct paths for your Adams installation.

Usage
-----
Once your enivronment variables are set you can import and use 
the adamspy package.  Here is an example script:

.. code-block:: python

    #! python3

    # Set Environment Variables
    import os
    os.environ['ADRILL_USER_CFG'] = 'C:\\users\\user_name\\.adrill.cfg'
    os.environ['ADRILL_SHARED_CFG'] = 'C:\\MSC.Software\\Adams\\2018\\adrill\\adrill.cfg'
    os.environ['ADAMS_LAUNCH_COMMAND'] = 'C:\\MSC.Software\\Adams\\2018\\common\\mdi.bat'
    
    # Import the adripy module from the adamspy package
    from adamspy import adripy    
    
    # Get the length of a bha (not including upper physical and 
    # equivalent drill pipe) defined in my_string.str
    string_file = 'my_string.str'
    bha_length = adripy.get_bha_length(string_file)

    # print the bha length to the terminal
    print(f'The length of this BHA is {bha_length} feet.')

The above script would output:

.. code-block:: cmd

    > The length of this BHA is 856.88 feet.

Next Steps
==================
If you aren't sure how to use this package, you can start by 
examining the :doc:`adripy examples <adripy_examples>`.

You can also examine the functions in the
:mod:`~adamspy.adripy.utilities`.  These are 
basic functions for working with Adams Drill data.

From there you should explore the :class:`~adamspy.adripy.string.DrillString` class
, the :class:`~adamspy.adripy.event.DrillEvent` class, the :class:`~adamspy.adripy.solver_settings.DrillSolverSettings` 
class, and the :class:`~adamspy.adripy.tool.DrillTool` class.

These classes represent Adams Drill objects (e.g. drill strings, 
events, pdc bits) and have methods for building and running 
drill models.

Contribute
==================
- Source Code: https://github.com/bthornton191/adamspy

Indices and tables
==================

* :ref:`genindex`
* :ref:`modindex`
* :ref:`search`
    
.. rubric:: Footnotes

.. [#f1] adamspy is designed to run in a stand alone python environment. It must communicate with an Adams installation, but need not run in the Adams View environment. However, the package should work if run in the Adams View python environment.  See **aviewpy** for tools that are specifically meant for the Adams View environment.


.. toctree::
   :maxdepth: 2
   :caption: Contents: