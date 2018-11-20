#!/usr/bin/python3.5
# -*-coding:Utf-8 -*

#############################################################################
# ParseAnnotationFiles_tutorial.py 
# Tools and functions to create, import, and format a corpus.
# Jérôme Nika, IRCAM STMS Lab
# copyleft 2016-2017
#############################################################################

from ParseAnnotationFiles import *

""" 
Tutorial for the tools and functions to create, import, and format a corpus defined in ParseAnnotationFiles.py. 
"""


# EXAMPLE
path_input = "/Applications/ImproteK/3-BuildCorpus/in/Radioactivity" 
tempo = 120


path_output = "/Applications/ImproteK/3-BuildCorpus/out/"+path_input.split("/")[-1]+"_mem"
format_and_write_annotations_from_labeled_events(path_input, path_output, max_num_label = 2, tempo = tempo)
