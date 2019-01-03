"""
--------------------------------------------------------------------------
Description
--------------------------------------------------------------------------
adamspy is a set of python tools for manipulating MSC Adams files

--------------------------------------------------------------------------
Author
--------------------------------------------------------------------------
Ben Thornton (ben.thornton@mscsofware.com)
Simulation Consultant - MSC Software

--------------------------------------------------------------------------
Version
--------------------------------------------------------------------------
v1 - 2018119

"""

import re

def get_simdur_from_msg(msg):
    found = False
    with open(msg, 'r') as fid:
        for line in fid:
            if re.match(' *command: sim(ulate)?/dyn(anmic)?.*, *end *=.*', line.lower()):
                sim_dur = float(re.split('end *=',line.lower().replace(' ',''))[-1].split(',')[0])
                print(line)
                print(sim_dur)
                found=True
    if found:
        return sim_dur
    else:
        raise RuntimeError('No simulation end time was found in the specified message file!')


