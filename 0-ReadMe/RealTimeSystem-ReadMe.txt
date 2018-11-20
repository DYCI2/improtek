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


------------------------------------------
USE THE SYSTEM WITH THE MAX INTERFACE
------------------------------------------

/!\ This adaptative renderer uses Antescofo (http://forumnet.ircam.fr/product/antescofo-en/) /!\
/!\ This use requires Max7 64bit and OM12 /!\

Make sure that you have in yout Applications folder:
- a version of Max 7 opening in 64 bit called "Max64" (/!\ Name /!\)
(if not Cmd+i on the .app and modify the field "open in 32bits")
- a "OM 6.12.app" in the folder Applications/OM 6.12/ 
(Download OM12: http://repmus.ircam.fr/openmusic/download)
/!\ You must have the permission to write in this folder and its subfolders. /!\

Copy the whole IMPROTEK directory in "Applications"

---------------------------------------
/!\ Before launching the system: /!\  
---------------------------------------
- Make sure that the path of the ImproteK "OM-LIBRARIES" directory is set in OM preferences (External User Libs Directories).
- Make sure that the path of the ImproteK directory is set in the file preferences in Max.

FINALLY
Run the script "2-Audio-Interface/Launch.sh":
	1) Open a terminal in "2-Audio-Interface" 
		- open a terminal
		- type "cd " then drop the directory "2-Audio-Interface" in the terminal
		- the absolute path should appear
		- type ENTER
	2) "./Launch.sh" + "ENTER"

------------------------------------------
CORPUS and AUTOMATIC CORPUS BUILDING
------------------------------------------

SCENARIOS and MEMORIES ("..._tune") must be defined in:
OM-LIBRARIES/improtek/sources/6-Data/Scenario

OFFLINE AUDIO MEMORY (.aif files) must be placed in 2-Audio-Interface/Memory/
The BEAT AND LABEL ANNOTATIONS of these files have to be listed in 2-Audio-Interface/Memory/memory.json

(--> See directory "3-BuildCorpus")