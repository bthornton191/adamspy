import os

import pandas as pd

from ..postprocess.ppt import get_results

RESULT_SETS = {
    'tire_forces': ['normal', 'longitudinal'],
    'tire_kinematics': ['longitudinal_slip', 'slip_angle']
}

SOFT_SOIL_RESULTS_SETS = {
    'tire_soft_soil_main': ['tire_deflection', 'loaded_radius', 'rolling_radius', 'substitution_radius', 'total_sinkage', 'rotational_velocity'],
    'tire_soft_soil_stress': ['entry_angle', 'exit_angle', 'max_stress_angle', 'max_normal_stress'],
    'tire_soft_soil_deform': ['z_elastic']
}

RESULTS_MAP = {
    'F_x': ['tire_forces', 'longitudinal', 0.224809],
    'F_n': ['tire_forces', 'normal', 0.224809],
    'k': ['tire_kinematics', 'longitudinal_slip', 1],
    'alpha': ['tire_kinematics', 'slip_angle', 1]
}

SOFT_SOIL_RESULTS_MAP = {    
    'f_0': ['tire_soft_soil_main', 'tire_deflection', 0.0393701],
    'h': ['tire_soft_soil_main', 'total_sinkage', 0.0393701],
    'h_e': ['tire_soft_soil_deform', 'z_elastic', 0.0393701],
    'theta_f': ['tire_soft_soil_stress', 'entry_angle', 1],
    'theta_r': ['tire_soft_soil_stress', 'exit_angle', 1],
    'theta_m': ['tire_soft_soil_stress', 'max_stress_angle', 1],
    'R_s': ['tire_soft_soil_main', 'substitution_radius', 0.0393701],
    'R_l': ['tire_soft_soil_main', 'loaded_radius', 0.0393701],
    'R_r': ['tire_soft_soil_main', 'rolling_radius', 0.0393701],
    'w': ['tire_soft_soil_main', 'rotational_velocity', 1],
    'sig_max': ['tire_soft_soil_stress', 'max_normal_stress', 145.038]
}


def map_results(res_dict, soft_soil=False):
    df = pd.DataFrame({'t': res_dict['time']}) 

    results_map = RESULTS_MAP if soft_soil is False else {**RESULTS_MAP, **SOFT_SOIL_RESULTS_MAP}

    for name, res in results_map.items():
        df[name] = res_dict[res[0]][res[1]]
        df[name] = df[name]*res[2]

    return df

def get_tire_testrig_results(res_file, soft_soil=False, res_file_units='mmks'):    
    result_sets = RESULT_SETS if soft_soil is False else {**RESULT_SETS, **SOFT_SOIL_RESULTS_SETS}
    res_dict = get_results(res_file, result_sets)
    return map_results(res_dict, soft_soil=soft_soil)