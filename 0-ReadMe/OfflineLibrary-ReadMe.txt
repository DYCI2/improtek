============================================================================================
ImproteK 5.0 (research prototype) contains :
- generative processes in a modular CommonLisp library to use in the OpenMusic environment,
- an audio sequencer / renderer (in Max) dedicated to live performance.
============================================================================================

*** This version is a snapshot of the current version whose development is ongoing ***
*** Future evolutions, successive releases : see https://forge.ircam.fr/p/ImproteK ***


ImproteK requires 
OpenMusic (http://repmus.ircam.fr/openmusic/download)
and 
Max7 and Antescofo (when using the Max7 audio interface dedicated to live performance, Antescofo : http://forumnet.ircam.fr/product/antescofo-en/)


---------------------------------------
USE THE OM LIBRARY OFFLINE
---------------------------------------

/!\ Install OpenMusic (http://repmus.ircam.fr/openmusic/download) /!\

****

To load the libray : start OpenMusic and evaluate (Cmd+Y) the file 1-GenerativeProcesses_OM/sources/LoadImprotek.lisp

****
Overview of the library:

2-GenerationProcesses/Label-Data-Event.lisp
Definition of the class "event" with a slot "label" (class "label") and a slot "data" (class "data").
This file lists the methods that have to be overloaded for each new alphabet of labels and new data for the contents.

3-Event
Contains some classes inherithing from "event" (for example "audioharmbeat").
Following this model, one can define his own type of musical events with chosen "label" and "data".

2-GenerationProcesses/Improvizer.lisp
Definition of the class "improvizer" containing the musical memory and generic generation methods (independant from the type of event, label, data), in particular the method "Improvize".

5-HandleImpro/RealTimeImprovizer.lisp

Defition of the class "RealTimeImprovizer" embeddig a trace of the navigation through the memory to be able to revise the generated material dinamically.
Contrary to the class "Improvizer" (one run of "Improvize" = a whole improvizaltion matching the scenario), "RealTimeImprovizer" generates its improvisations phase by phase (cf article ImproteK, ACM computers in entertainment).

****
7-Examples/DemoMidi.lisp is a simple example of different uses of the basic classes and methods. (Evaluation of a selection : Cmd+E)

These example are simple navigations through memories matching different scenarios, without playing with any other generation parmeter (continuity, transposition,... and other slots of the slass "improvizer").
In this demo, the generated sequences are formatted to be played in OpenMusic. When the library is used with the audio interface, the segments of symbolic improvisations are sent to Max via OSC protocol.
****
To play with other harmonic scnearios and memories, see 6-Data.






