
from adamspy.postprocess.ppt import get_results as _get_results

def get_res_data(res_file, res, comp, t_min=None, t_max=None):
    results = _get_results(res_file, {res: [comp]}, t_min=t_min, t_max=t_max)    
    return results['time'], results[res][comp], len(results['time'])