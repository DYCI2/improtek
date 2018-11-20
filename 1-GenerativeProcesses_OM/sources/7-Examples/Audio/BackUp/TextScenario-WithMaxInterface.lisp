(in-package :om)

(format *om-stream* "loading TextScenario-WIthMaxInterface~%")

;FAIRE L'OSC ET LE HANDLE OSC
;FAIRE FACTORISATION POUR PLUSIEURS INSTANCES



(defmethod equalLabel ((h1 harmlabel) (h2 harmlabel))
  (let ((nh1 (NormalizeLabel h1)) (nh2 (NormalizeLabel h2)))
    (or
     (and 
      (equal (root nh1) (root nh2)) 
      (equal (chordtype nh1) (chordtype nh2)))

     ;Begin new condition
     (and 
      (equal (root nh1) (root nh2)) 
      
      (or
       (and (equal (chordtype nh1) '7)
            (equal (chordtype nh2) '7b9))
       (and (equal (chordtype nh1) '7b9)
            (equal (chordtype nh2) '7)))
      )
     ;End new condition
     
     )))


(defun alphabet-properties (i)
  (cond

   ;==== SETTING NUM 0
   ;===================================================
   ((= i 0)
    (defmethod equalLabel ((h1 harmlabel) (h2 harmlabel))
      (let ((nh1 (NormalizeLabel h1)) (nh2 (NormalizeLabel h2)))
        (and 
         (equal (root nh1) (root nh2)) 
         (equal (chordtype nh1) (chordtype nh2))
         )))
    )


   ;=== SETTING NUM 1
   ;===================================================
   ((= i 1)
    (defmethod equalLabel ((h1 harmlabel) (h2 harmlabel))
      (let ((nh1 (NormalizeLabel h1)) (nh2 (NormalizeLabel h2)))
        (or
         (and 
          (equal (root nh1) (root nh2)) 
          (equal (chordtype nh1) (chordtype nh2)))
         
     ;--- Begin new condition
         (and 
          (equal (root nh1) (root nh2)) 
          
          (or
           (and (equal (chordtype nh1) 'rabbit)
                (equal (chordtype nh2) 'dog))
           (and (equal (chordtype nh1) 'dog)
                (equal (chordtype nh2) 'rabbit)))
          )
     ;--- End new condition


     ;--- Begin new condition
         ;(and 
          ;(equal (root nh1) (root nh2)) 
          
         ; -- Modify below
          ;(or
           ;(and (equal (chordtype nh1) '?)
                ;(equal (chordtype nh2) '??))
           ;(and (equal (chordtype nh1) '??)
                ;(equal (chordtype nh2) '?)))
          ;)
     ;--- End new condition
     )))
    )
   ;===================================================


     ;=== SETTING NUM 2 (copy, paste, modify SETTING NUM 2)
     ;===================================================
     ;...
     ;===================================================   

   ( t (print "OM : UNKNOWN ALPHABET SETTINGS"))

))







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



;Plus tard à mettre dans Improvizer.lisp
;----------------------------------------
(defun cycles-to-idxs (scen cycle-start cycle-end)
  (let ((l (list-length scen)))
    (list
     (+ (* (- cycle-start 1) l) 1)
     (* cycle-end l)
     )
    ))
;(cycles-to-idxs '(4 5 6 7) 1 1)

(defmethod set-start-region-max ((self improvizer) (region list))
  (set-start-region 
   self 
   (list 
    (nth 0 region) 
    (min (nth 1 region) (maxetat self))
    )
))

(defmethod set-start-region_cycles ((self improvizer) (scen list) (select-cycles list)) 
  (if (not select-cycles) 
      (set-start-region self (list 0 (maxetat self)))
    (let ((cycle-start (nth 0 select-cycles)) (cycle-end (nth 1 select-cycles)))
      (set-start-region-max 
       self
       (cycles-to-idxs scen cycle-start cycle-end)
       )
      (loop for i from 0 to (maxetat self) do 
            (if 
                (or (< i (nth 0 (start-region self))) (> i (nth 1 (start-region self))))
                (setf (gethash i (tabou self)) t)

             ))
      )))    

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



; Handle/Parse OSC messages: 4-Save-Send-Receive/HandleReceivedOSC.lisp

(setf 
;**************************************************************************
; VARIABLES GLOBALES (A INITIALISER AVANT IMPRO PUIS MESSAGES OSC POUR MODIFIER)
;**************************************************************************
      
 VOICES '(1 1 1) ;liste des voix qui seront calculées

;------------------------------------------------------------
; SCENARIO ET MEMOIRES
;------------------------------------------------------------ 
 SCENARIO kaddish_tune
 MEMORY (list
                   (list
                    kaddish_tune
                    )
                   (list
                    kaddish_tune
                    )
                   (list
                    kaddish_tune
                    )
                   )
;------------------------------------------------------------
; PARAM. GENERATION liste (param pour voix 1, 2 3)
;------------------------------------------------------------      
 NUMGRILLES '(1 1 1)
 modeRT '(nil nil nil)
 newtabousperf '(nil nil nil)
 nexteventifnosolution '(nil nil nil)
 
 transpos (list 
           '(1 0 -1) 
           '(1 0 -1) 
           '(1 0 -1) )
 
 besttranspomode '(t t t) ; transpo qui permet plus long fragment
 
 maxcont '(96 96 96)   ; continuité Omax en beats


 select-cycles '(
                 nil 
                 nil 
                 nil
                 )
 
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
; FONCTION LANÇANT GENERATION A APPELER APRES MODIF VARIABLES GLOBALES DESSUS
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
            
            (format *om-stream* "~% OK 1!~%")
            (setf memory_tune (car (nth (1- NUMVOICE) memory)))
            (format *om-stream* "~% OK 2!~%")
            (setf 
             beatdur (beatduration scenario_tune)
             Improvizer (NewSymbolicRealtimeImprovizer_AudioHarmbeats memory_tune beatdur (nth (1- NUMVOICE) NUMGRILLES) ))
            (setf scenario (MakeLabelsFromList (expand_grid (grid scenario_tune)) 'harmlabel)
                  beatduration beatdur)
        ;Improvizer (clone Imp)
                  
            (osc-send-list-as-antescofo-map scenario 0 "127.0.0.1" prtSndToAntescofo "/scenario" 0 t)
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
          
          ; SELECT CYCLES
          (set-start-region_cycles Improvizer scenario (nth (1- NUMVOICE) select-cycles))
          
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
                        (osc-send-sequence-fragment impro-fragment idx-beginning-next-phase "127.0.0.1" prtSndToAntescofo "/modify" NUMVOICE)
                        (setf idx-beginning-next-phase (+ idx-beginning-next-phase (list-length impro-fragment))))
                    (progn 
                      (incf idx-beginning-next-phase)
                      (format *om-stream* "No impro fragment generated~%")))
        ;Prepare next generation phase
                  (setf current-scenario-suffix (nthcdr idx-beginning-next-phase scenario)))
            (format *om-stream* "~%=================Voice number ~a generated !=================~%" NUMVOICE))
          

))))

      