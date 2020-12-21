import os
import xml.etree.ElementTree as et
import pickle
SHRUNK_RES_SUFFIX = '_shrunk'
XML_REF = 'http://www.mscsoftware.com/:xrf10'
STEPMAP_TAG = 'StepMap'
ENTITY_TAG = 'Entity'
COMPONENT_TAG = 'Component'
STEP_TAG = '{' + XML_REF + '}' + 'Step'

def get_results(result_file, reqs_to_get=None, t_min=None, t_max=None, return_units=False, overwrite_pickle=True, use_iterparse=False):
	"""Gets results from an Adams results (.res) file.
	
	Example
	-------
	>>> result_file = 'example.res'
	>>> t_min = 70
	>>> t_max = 80
	>>> reqs_to_get = {}
	>>> reqs_to_get['MSE'] = ['Instantaneous_Bottom_MSE', 'Filtered_Surface_MSE']
	>>> reqs_to_get['ROP_controls'] = ['Command_ROP', 'True_WOB']
	>>> requests, units = get_results(result_file, reqs_to_get, t_min, t_max)

	Note
	----
	This funciton only works with Requests.  It does not work with Result Sets.

	Note
	----
	This function only works with xml results files.
	
	Parameters
	----------
	result_file : str
		Filename of an Adams results (.res) file
	reqs_to_get : dict
		Dictionary of requests to extract (the default is None, which gets all results)
	t_min : float, optional
		Minimum time for which to extract results (the default is None)
	t_max : float, optional
		Maximum time for which to extract results (the default is None)
	
	Returns
	-------
	dict
		Dictionary of request data
	dict
		Dictionary defining units for each request. NOTE: This is only returned if `return_units=True`
	
	"""
	pickle_filename = os.path.join(os.path.dirname(result_file), '.' + os.path.splitext(os.path.split(result_file)[-1])[0] + '.pkl')
	units_pickle_filename = os.path.join(os.path.dirname(result_file), '.' + os.path.splitext(os.path.split(result_file)[-1])[0] + '_units.pkl')

	if overwrite_pickle is False and os.path.isfile(pickle_filename) and (os.path.isfile(units_pickle_filename) or return_units is False):
		# Load from a pickle file
		with open(pickle_filename, 'rb') as fid:
			reqs_to_return = pickle.load(fid)

		if return_units is True:
			with open(units_pickle_filename, 'rb') as fid:
				units = pickle.load(fid)

	elif use_iterparse is False:
		# Parse the results file
		res_tree = et.parse(result_file)
		
		# Loop over all the *Entity* nodes in the input tree, pick out the ones requested
		# in `reqs_to_keep` and put their units and original ids into dictionaries
		units, req_ids, reqs_to_get = _get_units_and_ids(res_tree, reqs_to_get)

		# Initialize the output requests dictionary
		reqs_to_return = {req : {req_comp : [] for req_comp in reqs_to_get[req]} for req in reqs_to_get}
		time = []

		# Make a list of all the data nodes that represent dynamic sims
		dyn_data_nodes = [node for node in res_tree.iter('{'+XML_REF+'}Data') if 'dynamic_' in node.attrib.get('name')]

		del res_tree

		for data_node in dyn_data_nodes:
			# For each dynamic data node

			_process_data_node(data_node, reqs_to_return, time, req_ids, t_max, t_min)
		
	else:
		
		# Loop over all the *Entity* nodes in the input tree, pick out the ones requested
		# in `reqs_to_keep` and put their units and original ids into dictionaries
		units, req_ids, reqs_to_get = _get_units_and_ids(et.parse(result_file), reqs_to_get)

		# Initialize the output requests dictionary
		reqs_to_return = {req : {req_comp : [] for req_comp in reqs_to_get[req]} for req in reqs_to_get}
		time = []

		# Parse the results file using iterparse
		for _event, data_node in et.iterparse(result_file):
			# For each node

			if data_node.tag == '{'+XML_REF+'}Data' and 'dynamic_' in data_node.attrib.get('name'):

				# If the node is a dynamic data node, process it
				_process_data_node(data_node, reqs_to_return, time, req_ids, t_max, t_min)
		
	# Add the time list to the return dict
	reqs_to_return['time'] = time

	# Write to a pickle file
	with open(pickle_filename, 'wb') as fid:
		pickle.dump(reqs_to_return, fid)
	
	if return_units is True:
		with open(units_pickle_filename, 'wb') as fid:
			pickle.dump(units, fid)

	if return_units:
		return reqs_to_return, units
	else:
		return reqs_to_return

def _process_data_node(data_node, reqs_to_return : dict, time : list, req_ids : dict, t_max : float, t_min : float):
	for step_node in data_node:
		# For each step (only one) in the model input data, put the
		# old step data into a list
		step_data = step_node.text.replace('\n',' ').split(' ')
		
		t_step = round(float(step_data[1]),3)
		if (t_min is None or t_step >= t_min) and (t_max is None or t_step <= t_max):
			# If the time falls within the desired time range, add to the time list
			time.append(t_step)

			# Add to the req_comp list
			for req in reqs_to_return:
				for req_comp in reqs_to_return[req]:
					req_id = int(req_ids[req][req_comp])
					reqs_to_return[req][req_comp].append(float(step_data[req_id]))
		
		elif t_max is not None and t_step > t_max:
			break

def shrink_results(result_file, reqs_to_keep=None, t_min=None, t_max=None, new_result_file=None, in_place=False):	
	"""Shrinks a results file by eliminating unwanted data.
	
	Example
	-------
	>>> result_file = 'example.res'
	>>> t_min = 70
	>>> t_max = 80
	>>> reqs_to_keep = {}
	>>> reqs_to_keep['MSE'] = ['Instantaneous_Bottom_MSE', 'Filtered_Surface_MSE']
	>>> reqs_to_keep['ROP_controls'] = ['Command_ROP', 'True_WOB']
	>>> shrink_results(result_file, reqs_to_keep, t_min, t_max)

	Note
	----
	This funciton only works with Requests.  It does not work with Result Sets.

	Parameters
	----------
	result_file : str
		Filename of the results file
	reqs_to_keep : dict
		Dictionary of requests and request components that should be saved. 
	t_min : float, optional
		Start time of period of interest (default is None which uses the first time step)
	t_max : float, optional
		End time of period of interest (default is None which uses the last time step)
	new_result_file : str
		Name that will be given to the new results file. (Default is None which adds a '_shrunk' suffix to `result_file` if in_place=False or uses `result_file` if in_place=True.)
	in_place : bool, optional
		If True, existing file will be deleted.

	"""	
	input_tree = et.parse(result_file)
	input_ans_node = [ans for ans in input_tree.iter('{'+XML_REF+'}Analysis')][0]
	
	# Create `units` and `old_ids` dictionaries
	units, old_ids, _reqs_to_keep = _get_units_and_ids(input_tree, reqs_to_keep)
	
	# If `reqs_to_keep` is None, set it equal to all requrests
	if reqs_to_keep is None:
		reqs_to_keep = _reqs_to_keep

	# Create New XML tree
	root_res = et.Element('Results', xmlns=XML_REF)    
	root_ans = et.SubElement(root_res, 'Analysis', name=input_ans_node.attrib['name'], executionDate=input_ans_node.attrib['executionDate'], Solver=input_ans_node.attrib['Solver'], script=input_ans_node.attrib['script'])
	root_map = et.SubElement(root_ans, 'StepMap', name='map_001')
	ent_time = et.SubElement(root_map, 'Entity', name='time')
	root_data = et.SubElement(root_ans, 'Data', name='dynamic_001', id='1')
				
	# Create the time component
	et.SubElement(ent_time, 'Component', name='TIME', unitsValue='sec', id='1')

	# Create StepMap
	new_id = 2
	for request in reqs_to_keep:
		ent_map = et.SubElement(root_map, 'Entity', name=request, entity=request, entType='Request', objectId='0')
		for req_comp in reqs_to_keep[request]:
			et.SubElement(ent_map, 'Component', name=req_comp, plotLabel=units[request][req_comp], id=str(new_id))
			new_id += 1

	# Make a list of all the data nodes that represent dynamic sims
	dyn_data_nodes = [node for node in input_tree.iter('{'+XML_REF+'}Data') if 'dynamic_' in node.attrib.get('name')]

	# Loop through the dynamic sim data nodes
	for data_node in dyn_data_nodes:
		# For each dynamic data node

		for step_node in data_node:
			# For each step (only one) in the model input data, put the
			# old step data into a list
			old_step_data = step_node.text.replace('\n',' ').split(' ')

			t_step = round(float(old_step_data[1]),3)
			if (t_min is None or t_step >= t_min) and (t_max is None or t_step <= t_max):
				# If the time falls within the desired time range add to `new_step_data`
				new_step_data = _get_new_steplist(reqs_to_keep, old_step_data, old_ids)

				# Create a string containing the model input data								
				new_dynamic_text = _convert_steplist_to_string(new_step_data)
			
				# Rewrite the SubElement text
				xml_step = et.SubElement(root_data, 'Step', type='dynamic')
				xml_step.text = new_dynamic_text

	# Determine the output file if it wasn't given or if the one that was provided is equal to the original
	if new_result_file is None or new_result_file == result_file:	
		new_result_file = result_file + '.tmp' if in_place is True else result_file.replace('.res', '') + f'{SHRUNK_RES_SUFFIX}.res'
	
	# Write the output file
	output_tree = et.ElementTree(root_res)
	_xml_format(root_res)
	output_tree.write(new_result_file, encoding='utf-8', xml_declaration=True)

	# If in_place is set to true, remove the original results file
	if in_place is True:
		os.remove(result_file)
		
		# If no name was given for the output file and a .tmp extension was used, remove it
		if new_result_file.endswith('.tmp'):
			os.rename(new_result_file, new_result_file.replace('.tmp',''))

def _get_new_steplist(reqs_to_keep, old_step_data, req_ids):
	"""Returns a list similar to `old_step_data` but with unwanted requests removed.

	Uses the requests and request components in `old_step_data` and the entitiy ids in `req_ids` to determine which elements in `old_step_data` to keep.
	
	Parameters
	----------
	reqs_to_keep : dict
		Dictionary of requests and request components to keep
	old_step_data : list
		List of all the step data in the results file
	req_ids : dict
		Dictionary of entity ids for the entire results file
	
	Returns
	-------
	list
		List of just the step data to keep
	
	"""
	# Start a new list with just the time element from `old_step_data`  
	new_step_data = [old_step_data[1]]

	# Loop through the desired requests and components to pull elements
	# from `old_step_data` into `new_step_data`	
	for request in reqs_to_keep:
		# For each desired request 
		for req_comp in reqs_to_keep[request]:
			# For each desired request component, add that components
			# step data to `new_step_data`
			req_id = int(req_ids[request][req_comp])
			new_step_data.append(old_step_data[req_id])
	
	return new_step_data

def _convert_steplist_to_string(step_data):
	"""Converts list of step data into a single string.
	
	Parameters
	----------
	step_data : list
		List of step data
	
	Returns
	-------
	str
		A space delimited string where every 6th value is followed by a newline.
	
	"""
	text = ''

	for i, datum in enumerate(step_data):
		if i == 0:
			text += f'\n{datum}\n'
		else:
			if i%6 == 0:
				text += f'{datum}\n'
			else:
				text += f'{datum} '
	
	return text


def _xml_format(element, level=0):
	"""Makes the root text look prettier.
	
	Parameters
	----------
	elem : Element
		:class:`Element` whose text will be formatted.
	level : int, optional
		Tree level of `Element` (the default is 0)
	
	"""
	i = '\n' + level*"  "
	if len(element):
		if not element.text or not element.text.strip():
			element.text = i + "  "
		if not element.tail or not element.tail.strip():
			element.tail = i
		for elem in element:
			_xml_format(elem, level+1)
		if not element.tail or not element.tail.strip():
			element.tail = i
	else:
		if level and (not element.tail or not element.tail.strip()):
			element.tail = i

def _get_units_and_ids(tree, reqs=None):
	"""Loops over all the *Entity* nodes in `tree` and picks out the ones requested	in `reqs`. Returns dictionaries of their units and original ids.
	
	Parameters
	----------
	tree : ElementTree
		Root xml tree for an Adams results file
	reqs : dict, optional
		Dictionary of requests and request components to keep. (Default is None, which gets all the requests)
	
	Returns
	-------
	dict
		Two level dictionary indicating the units associated with the request components
	dict
		Two level dictionary indicating the xml ids associated with the request components
	dict
		Two level dictionary indicating the requests and request components NOTE: This is identical to the `reqs` argument unless the reqs argument is None.)
	"""
	units = {}
	req_ids = {}
	requests = {}

	# Make a list of the request entities in `tree`
	req_ents = [ent for ent in tree.iter('{'+XML_REF+'}Entity') if 'entType' in ent.attrib and ent.attrib['entType'] == 'Request']
	
	# Loop through all the request entities
	for entity in req_ents:
		# For each entitiy in the results tree

		if reqs is None or entity.attrib['name'] in reqs:
			# If this entity is in `reqs_to_get` or `reqs_to_get` is None
			# Store the request name in `request` 
			request = entity.attrib['name']

			# Create an entry in the `units` and `req_ids` dictionaries
			units[request] = {}
			req_ids[request] = {}
			requests[request] = {}

			for comp in entity:
				# For each component in the entitiy
				# Store the component name as `req_comp`
				req_comp = comp.attrib['name']

				if reqs is None or req_comp in reqs[request]:
					# If this component is in `reqs_to_get[request]`
					# Create an entry in the `units` and `req_ids` dictionaries 
					units[request][req_comp] = comp.attrib['plotLabel']
					req_ids[request][req_comp] = comp.attrib['id']
					requests[request][req_comp] = comp.attrib['id']
					
	return units, req_ids, requests
		
def get_stepmap_dictionary(file_name):
    """
    Create dictionary where keys are result names and values are indices of components. 
    
    Note
    ----
    Res names must be full, like: 
    * time.time
    * part_2_xform.fx
    * part_3_xform.accy
    
    Parameters
    ----------
    file_name : str
        Results (.res) file
        
    Returns
    -------
    dict
        Step map

    """
    step_dict = {}

    for _event, elem in et.iterparse(file_name):

        if STEPMAP_TAG in elem.tag:
            ent_name = ''
            for el in elem.iter():
                if ENTITY_TAG in el.tag:
                    # found a new entity - hold onto this name:
                    ent_name = el.get('name')

                if COMPONENT_TAG in el.tag:
                    # form complete comp name:
                    comp_name = '{}.{}'.format(ent_name, el.get('name'))
                    el_id = el.get('id')
                    step_dict[comp_name] = int(el_id)

    return step_dict

def get_component(res_file, comp_name):
    """Returns the numeric data in `res_file` associated with the result component `comp_name`.
    
    Parameters
    ----------
    res_file : str
        Result (.res) file
    comp_name : str
        Name of result component
    
    Returns
    -------
    list
        List of values from the result (.res) file.

    Raises
    ------
    ValueError
        Raised if `comp_name` not found in `res_file`.

    """
    comp_dict = get_stepmap_dictionary(res_file)
    
    # Check if the requested component is in the results and raise an error if not.
    if comp_name not in comp_dict.keys():
        raise ValueError(f'{comp_name} was not found in {res_file}!')
    
    comp_id = comp_dict[comp_name] - 1 
    
    res = []
    for _event, elem in et.iterparse(res_file):
        step_data = []
        if elem.tag == STEP_TAG:
            lines = elem.text.splitlines()
            for line in lines:
                step_data.extend([float(val) for val in line.split()])
                
                # Free up memory:
                elem.clear()

            res.append(step_data[comp_id])

    return res
