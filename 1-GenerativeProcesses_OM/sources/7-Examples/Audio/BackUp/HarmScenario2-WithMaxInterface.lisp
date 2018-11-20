(in-package :om)


(defun NewSymbolicImprovizer_AudioHarmbeats_from_list (l mult)
  (let* ((listofemptyevents '()) (i 0) (labels '()))
    (loop for memory_tune in l do
          (loop for l from 1 to mult do
                (setf labels (append labels (expand_grid (grid memory_tune))))))
    (loop for label in labels do 
          (progn
            (setf listofemptyevents 
                  (append listofemptyevents 
                          (list (NewAudioHarmbeat (nth 0 label) (nth 1 label) i duration))))
            (setf i (+ i 1))))
    (NewImprovizer listofemptyevents duration)))

(defmethod equalLabel ((h1 harmlabel) (h2 harmlabel))
  (let ((nh1 (NormalizeLabel h1)) (nh2 (NormalizeLabel h2)))
    (or
     (and 
      (equal (root nh1) (root nh2)) 
      (equal (chordtype nh1) (chordtype nh2)))
     (and 
      (equal (root nh1) (root nh2)) 
      (or
       (and (equal (chordtype nh1) '7)
            (equal (chordtype nh2) '7b9))
       (and (equal (chordtype nh1) '7b9)
            (equal (chordtype nh2) '7))))
     ;add conditions
     
     )) )

#|
;CHANGE THE PROPERTIES OF THE ALPHABET (evaluate the chosen version)
;===================================================================

;Original method for harmlabels (default)
;-----------------------------------------
(defmethod equalLabel ((h1 harmlabel) (h2 harmlabel))
  (let ((nh1 (NormalizeLabel h1)) (nh2 (NormalizeLabel h2)))
    (and 
     (equal (root nh1) (root nh2)) 
     (equal (chordtype nh1) (chordtype nh2))
     ))) 

;Customized version
;-----------------------------------------
;evaluated above
(defmethod equalLabel ((h1 harmlabel) (h2 harmlabel))
  (let ((nh1 (NormalizeLabel h1)) (nh2 (NormalizeLabel h2)))
    (or
     (and 
      (equal (root nh1) (root nh2)) 
      (equal (chordtype nh1) (chordtype nh2)))
     (and 
      (equal (root nh1) (root nh2)) 
      (or
       (and (equal (chordtype nh1) '7)
            (equal (chordtype nh2) '7b9))
       (and (equal (chordtype nh1) '7b9)
            (equal (chordtype nh2) '7))))
     ;add conditions
     
     )) )

|#

#|
Some scenarios defined in 6-Data/Scenarios/Harm/HarmScenarios.lisp: 
------------------------------------------------------------------
Autumnleaves_tune 
Mahler_SIV_DHL_tune Mahler_SIV_DHLtot_tune Mahler_DKW_LdHV_tune
Mozart_MiTradi_tune

TheManILove_tune
TheManILove_tune  
PIAF : MonDieu2_tune 
Mozart_MiTradib_tune
Puccini_Liu2_tune
(om-inspect SCENARIO) 
(om-inspect VOICES) 
|#



; Handle/Parse OSC messages: 4-Save-Send-Receive/HandleReceivedOSC.lisp

(setf 
;**************************************************************************
; VARIABLES GLOBALES (A INITIALISER AVANT IMPRO PUIS MESSAGES OSC POUR MODIFIER)
;**************************************************************************
      
 VOICES '(1 1 1) ;liste des voix qui seront calcul�es

;------------------------------------------------------------
; SCENARIO ET MEMOIRES
;------------------------------------------------------------ 
 SCENARIO TheManILove_tune
 MEMORY (list
                   (list
                    TheManILove_tune
                    )
                   (list
                    MonDieutot2_tune
                    )
                   (list
                    Mozart_MiTradib_tune
                    )
                   )
;------------------------------------------------------------
; PARAM. GENERATION liste (param pour voix 1, 2 3)
;------------------------------------------------------------      
 NUMGRILLES '(1 1 1)
 modeRT '(nil nil nil)
 newtabousperf '(t nil nil)
 nexteventifnosolution '(t t t)
 
 transpos (list 
           '(1 2 3 4 0 -1 -2) 
           '(1 2 3 4 0 -1 -2) 
           '(1 2 3 4 0 -1 -2) )
 
 besttranspomode '(t t t) ; transpo qui permet plus long fragment
 
 maxcont '(96 96 96)   ; continuit� Omax en beats
 
 taboustoadd 
 (list
        nil; (list '(0 125) '(129 256))
        nil ; (list '(0 32))
        nil ;
        )
 )

;(om-inspect VOICES)
;(om-inspect modeRT)
;**************************************************************************
; FONCTION LAN�ANT GENERATION A APPELER APRES MODIF VARIABLES GLOBALES DESSUS
;**************************************************************************
(defun generationVOICES ()
  (loop for NUMVOICE from 1 to 3 do
        (if (= (nth (- NUMVOICE 1) VOICES) 1) 
        (let (
              (scenario_tune SCENARIO)
              (memory MEMORY)
              (memory_tune)
              (scenario nil)
              (Improvizer nil)
              (beatdur nil)
              (beatduration nil)
              )          

  ;;2307;;(setf *current-tune* (clone scenario))
  ;(setf *Current-Memory* (clone (car memory)))
  ;(setf memory_tune (Clone-Object *Current-Memory*))



;3-Instantiate an improviser
;--> Define Numvoice (player in Max patch, "Voices") and evaluate
          (progn
            
            ;(setf memory_tune (clone (car (nth (1- NUMVOICE) memory))))
            (setf memory_tune (car (nth (1- NUMVOICE) memory)))
  ;(setf *Current-Memory* (clone (car (nth (1- NUMVOICE) memory))))
  ;(setf memory_tune (Clone-Object *Current-Memory*))
            (setf 
             beatdur (beatduration scenario_tune)
             Improvizer (NewSymbolicRealtimeImprovizer_AudioHarmbeats memory_tune beatdur (nth (1- NUMVOICE) NUMGRILLES) ))
            (setf scenario (MakeLabelsFromList (expand_grid (grid scenario_tune)) 'harmlabel)
                  beatduration beatdur)
        ;Improvizer (clone Imp)
                  
            (osc-send-list-as-antescofo-map scenario 0 "127.0.0.1" 7657 "/scenario" 0 t)
            (sleep 1))
;(FormatLabellist (scenariofromimprovizer improvizer))
          
          
;3-Parametrize the improvize
;--> Define parameters and evaluate
;*************************************
;"yes": t, "no": nil
          
          (setf 
           (AuthorizedTranspos Improvizer) (nth (1- NUMVOICE) transpos)
 ;(AuthorizedTranspos Improvizer)  '(1 2 3 4 5 -1 -2 -3 -4 -5 0) ;Semitones
           (max-continuity Improvizer) (nth (1- NUMVOICE) maxcont)
           (bestTranspoMode Improvizer) (nth (1- NUMVOICE) besttranspomode)
           (FirstWithoutTranspoMode Improvizer) nil
           (randomPrefixOccurrenceMode Improvizer) t
           (LengthFactorsFromScen Improvizer) (list 1 (nth (1- NUMVOICE) maxcont))
           
           (modeRT Improvizer) (nth (1- NUMVOICE) modeRT) ;;;;
           
           (newtabousperf Improvizer) (nth (1- NUMVOICE) newtabousperf) ;;;;;;;;; /!\ if this option is 't' some slice may be empty!
           (nexteventifnosolution Improvizer) (nth (1- NUMVOICE) nexteventifnosolution) ; /!\ if this option is 't' some slice will not match the scenario !
           )
          
          ;(if (nth (1- NUMVOICE) taboustoadd) (add-tabous Improvizer (nth (1- NUMVOICE) taboustoadd)))
          (if (nth (1- NUMVOICE) taboustoadd) 
              (loop for tab in (nth (1- NUMVOICE) taboustoadd) do
                    (add-tabous Improvizer tab)
                    ))

;*************************************

;4-Generate the improvisation
;--> Evaluate
          (progn 

            ;(om-inspect Improvizer)

            (format *om-stream* "~%=================Generating voice number ~a =================~%" NUMVOICE)
            (setf current-scenario-suffix scenario
                  idx-beginning-next-phase 0
                  impro-fragment nil)
            
            (loop while (and current-scenario-suffix (< idx-beginning-next-phase (- (list-length scenario) 1))) do 
        ;Generate one fragment
                  (format *om-stream* "------~%Idx ~a / ~a~%" idx-beginning-next-phase (list-length scenario))
                  (setf (start-region Improvizer) (list 1 (maxetat Improvizer)))
                  (setf impro-fragment 
                        (Improvize_OnePhase 
                         Improvizer (list-length current-scenario-suffix) current-scenario-suffix idx-beginning-next-phase))
        ;Format and send this fragment to the Max patch
                  (if impro-fragment
                      (progn
                        (format *om-stream* "[~a,~a] generated and sent to Max !~%" 
                                idx-beginning-next-phase (- (+ idx-beginning-next-phase (list-length impro-fragment)) 1))
                        (osc-send-sequence-fragment impro-fragment idx-beginning-next-phase "127.0.0.1" 7657 "/modify" NUMVOICE)
                        (setf idx-beginning-next-phase (+ idx-beginning-next-phase (list-length impro-fragment))))
                    (progn 
                      (incf idx-beginning-next-phase)
                      (format *om-stream* "No impro fragment generated~%")))
        ;Prepare next generation phase
                  (setf current-scenario-suffix (nthcdr idx-beginning-next-phase scenario)))
            (format *om-stream* "~%=================Voice number ~a generated !=================~%" NUMVOICE))
          

))))

      