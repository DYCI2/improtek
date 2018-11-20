#!/usr/bin/python3.5
# -*-coding:Utf-8 -*

#############################################################################
# ParseAnnotationFiles.py 
# Jérôme Nika, IRCAM STMS Lab
# copyleft 2016-2017
#############################################################################

""" 
Create or import memory.
--------------------------
Tools and functions to create, import, and format a corpus from text files.
The text files
"""

import os
import errno

# Format: no empty line
# Each line: date in s; label (different elements separated by " ") or "idem"
def csv_events_to_lists(file_path, max_num_label = None):
	
	with open(file_path,"r") as f:
		i = 0
		lines = f.readlines()
	dates = []
	labels = []
	for line in lines:
		line = line.replace(" ",";")
		line = line.replace(",",";")
		#print(line)
		events = line.split(";")
		#print("events = {}".format(events))
		if events[1] != "\n":
			date_ms = float(events[0])*1000
			#label = events[1].replace("\n"," ").replace(","," ").replace(";"," ").split(" ")
			label = []
			for i in range(1, len(events)):
				label += events[i].replace("\n"," ").replace(","," ").replace(";"," ").split(" ")
			dates.append(date_ms)

			if label[0] == "idem":
				labels.append(labels[-1])
			else:
				#print("label = {}".format(label))
				if max_num_label is None:
					labels.append(filter(lambda x: x!="", label))
				else: 
					labels.append(filter(lambda x: x!="", label[0:max_num_label]))
	return dates, labels		

# def csv_events_to_lists(file_path, max_num_label = None):
	
# 	with open(file_path,"r") as f:
# 		i = 0
# 		lines = f.readlines()
# 	dates = []
# 	labels = []
# 	for line in lines:
# 		line.replace(" ",";")
# 		line.replace(",",";")
# 		#print(line)
# 		events = line.split(";")
# 		print("events  in parsing truc = {}".format(events))
# 		if events[1] != "\n":
# 			date_ms = float(events[0])*1000
# 			label = events[1].replace("\n"," ").split(" ")
# 			dates.append(date_ms)

# 			if label[0] == "idem":
# 				labels.append(labels[-1])
# 			else:
# 				print("label in parsing truc = {}".format(label))
# 				if max_num_label is None:
# 					labels.append(filter(lambda x: x!="", label))
# 				else: 
# 					labels.append(filter(lambda x: x!="", label[0:max_num_label]))
# 	return dates, labels	




def csv_bars_to_lists(file_path, dur_puls_s, max_num_label = None, num_beats_in_bar = 1):
	
	with open(file_path,"rU") as f:
		#i = 0
		lines = f.readlines()

	dates = []
	labels = []
	j = 0
	for line in lines:
		line.replace(" ",";")
		line.replace(",",";")
		events = line.split(";")
		print("events {}".format(events))
		if events[1] != "\n":
			nb_beat = int(events[0])
			label = events[1].replace("\n"," ").split(" ")
			print("nb_beat {}".format(nb_beat*num_beats_in_bar))
			print("label {}".format(label))
			for k in range(0,nb_beat*num_beats_in_bar):
				dates.append(j*dur_puls_s*1000)
				j += 1
				if label[0] == "idem":
					labels.append(labels[-1])
				else:
					if max_num_label is None:
						labels.append(filter(lambda x: x!="", label))
					else: 
						labels.append(filter(lambda x: x!="", label[0:max_num_label]))
	return dates, labels


def mean_tempo_dates_list(dates):
	#TODO ; exception / 0
	delta = [dates[n]-dates[n-1] for n in range(1,len(dates))]
	return 60000 / (sum(delta) / float(len(delta)))

def list_numbers_to_list_json(l):
	s = '['
	for i in range(0,len(l)-1):
		s += str(l[i]) + ', '
	s += str(l[len(l)-1])
	s += ']'
	return s

def list_labels_to_list_json(l):
	s = '['
	for i in range(0,len(l)-1):
		s += '"'
		for j in range(0,len(l[i])-1):
			s+= l[i][j]
			s+= " "
		s += l[i][len(l[i])-1]
		s += '", '

	s += '"'
	for j in range(0,len(l[len(l)-1])-1):
		s+= l[len(l)-1][j]
		s+= " "
	s += l[len(l)-1][len(l[len(l)-1])-1]
	s += '"'
	s += ']'
	return s


def json_memory(name, labels, dates, tempo = None, pos_in_scenario=None):
	
	try:
		assert len(labels) == len(dates)
	except AssertionError as exception:
			print("Sequence of dates and sequence of labels have different lengths.", exception)
	else:	
		if pos_in_scenario is None:
			pos_in_scenario = range(0,len(labels))
		if tempo is None:
			tempo = mean_tempo_dates_list(dates)

		s = '{\n\t"'+name+'" :\t{\n'

		s += '\t\t"labels" : ' + list_labels_to_list_json(labels)+',\n'
		s += '\t\t"dates" : ' + list_numbers_to_list_json(dates)+',\n'
		s += '\t\t"pos_in_scenario" : ' + list_numbers_to_list_json(pos_in_scenario)+',\n'
		s += '\t\t"last_tempo_session" : ' + str(tempo)+',\n'
		s += '\t\t"buffer" : "' + name+'"\n'

		s += '\n\t}'
		s += '\n}'
		return s


def list_labels_to_list_lisp(l):
	s = "'("
	for i in range(0,len(l)-1):
		s += '('
		for j in range(0,len(l[i])-1):
			s+= l[i][j]
			s+= " "
		s += l[i][len(l[i])-1]
		s += ') '

	s += '('
	for j in range(0,len(l[len(l)-1])-1):
		s+= l[len(l)-1][j]
		s+= " "
	s += l[len(l)-1][len(l[len(l)-1])-1]
	s += '))'
	return s

def lisp_memory(name, labels, tempo):
	s = '; '+name+'\n'
	s += ';--------------------------------------------------------------------------------------------------------------------'+'\n'
	s += '(setf '+name+"_grid " + list_labels_to_list_lisp(labels) +"\n\n"
	s += name+'_beatdur '+str(int(60000/tempo))+')\n'
	s += '(setf '+name+"_tune (make-instance 'tune :grid "+name+'_grid :beatduration '+name+'_beatdur :tunename "'+name+'"))\n'
	s += "(setf (gethash '"+'"'+name+'" *available-grids*) '+name+'_tune)'
	return s

#TODO : ??? --> un binaire qui permettent d'enregistrer ses grilles et autre en mémoire append
def format_and_write_annotations_from_labeled_events(path_csv, path_write, max_num_label = None, name = None, tempo = None):
	dates, labels = csv_events_to_lists(path_csv, max_num_label)
	
	if tempo is None:
		tempo = mean_tempo_dates_list(dates)

	if name is None:
		name = path_csv.split("/")[-1]

	json_string = json_memory(name, labels, dates, tempo)

	lisp_string = lisp_memory(name, labels, tempo)

	#os.makedirs(os.path.dirname(path_write), exist_ok=True)

	with open(path_write,'w') as f:
		f.write("\n\n\n\n\n")
		f.write(json_string)
		f.write("\n\n")
		f.write(lisp_string)
		f.write("\n\n\n\n\n")



def format_and_write_annotations_from_labeled_bars(path_csv, dur_puls_s, path_write, max_num_label = None, name = None, tempo = None, num_beats_in_bar = 1):
	dates, labels = csv_bars_to_lists(path_csv, dur_puls_s, max_num_label, num_beats_in_bar)
	
	if tempo is None:
		tempo = mean_tempo_dates_list(dates)

	if name is None:
		name = path_csv.split("/")[-1]

	json_string = json_memory(name, labels, dates, tempo)

	lisp_string = lisp_memory(name, labels, tempo)

	with open(path_write,'a') as f:
		f.write("\n\n\n\n\n")
		f.write(json_string)
		f.write("\n\n")
		f.write(lisp_string)
		f.write("\n\n\n\n\n")




