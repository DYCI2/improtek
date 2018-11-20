; J. Nika, Apr. 2017
;
; Some harmonic scenarios: chord progressions.

(in-package :om)
(format *om-stream* "loading Scenarios-Harm~%")

;=======
; TOOLS
;=======
;--------------------------------------------------------------------------------------------------------------------
(defparameter *available-grids* (make-hash-table :test #'string= ))

(defun bpmtobeatdur (bpm) (round (/ 60000 bpm)))

(defmethod! improtest-current-tune () 
            (beats->chseq (mix-poly-impro *current-tune* (oracle *current-tune*)) (beatduration *current-tune*) 0)) ;for OM patch 'improtest-current-tune'

; (d 7 4) => (d 7)(d 7)(d 7)(d 7)
(defun expand_grid (grid)
  (setf expanded_grid 
        (loop for i from 0 to (1- (list-length grid)) 
              append 
              (if (> (list-length (nth i grid)) 2)
                  (loop for j from 0 to (1- (nth 2 (nth i grid))) 
                        collect
                        (list (nth 0 (nth i grid)) (nth 1 (nth i grid)))
                        ) (list (nth i grid))))))

(defun make-oracle-from-beatlist (beatlist) (NewImprovizer beatlist))
;--------------------------------------------------------------------------------------------------------------------


;===========
; SCENARIOS
;===========

;So What, BPM=135 "Kind Of Blue" (soiree Faravohitra BPM=180)
;--------------------------------------------------------------------------------------------------------------------
(setf SoWhat_grid '(
                        (d m7 32) (d m7 32) (eb m7 32) (d m7 32)

)
                                                        
      SoWhat_beatdur 444)   ;BPM=135, beatdur= 444 ms
(setf SoWhat_tune (make-instance 'tune :grid SoWhat_grid :beatduration SoWhat_beatdur :tunename "SoWhat"))
(setf (gethash '"SoWhat" *available-grids*) SoWhat_tune)


;Caravan, BPM=220
;--------------------------------------------------------------------------------------------------------------------
(setf Caravan_grid '(
                        (c 7 48) (f m7 16) 
                        (c 7 48) (f m7 16) 
                        (f 7 16) (bb 7 16) (eb 7 16) (ab 7 8) (g 7 8)
                        (c 7 48) (f m7 16) 
)
                                                        
      Caravan_beatdur 273)   ;BPM=220, beatdur= 273 ms
(setf Caravan_tune (make-instance 'tune :grid Caravan_grid :beatduration Caravan_beatdur :chapters '(1 33) :tunename "Caravan"))
(setf (gethash '"Caravan" *available-grids*) Caravan_tune)


;All Of Me, BPM=190
;--------------------------------------------------------------------------------------------------------------------
(setf AllOfMe_grid '(
                        (c maj7 8) (e 7 8) (a 7 8) (d m7 8) (e 7 8) (a m7 8) (d 7 8) (d m7 4) (g 7 4)
                        (c maj7 8) (e 7 8) (a 7 8) (d m7 8) (d m7 4) (eb dim 4) (c maj7 4) (a 7 4) (d m7 4) (g 7 4) (c maj7 8)
)
                                                        
      AllOfMe_beatdur 315)   ;BPM=190, beatdur= 315 ms
(setf AllOfMe_tune (make-instance 'tune :grid AllOfMe_grid :beatduration AllOfMe_beatdur :tunename "AllOfMe"))
(setf (gethash '"AllOfMe" *available-grids*) AllOfMe_tune)


;Summertime
;--------------------------------------------------------------------------------------------------------------------
(setf Summertime_grid '(
                        (a m7 4) (a m7 4) (a m7 4) (a m7 4) 
                        (d m7 4) (d m7 4) (e 7 4) (e 7 4) 
                        (a m7 4) (a m7 4) (a m7 4) (a m7 4) 
                        (c maj7 4) (f maj7 4) (b m7b5 4) (e 7 4) 
)
                                                        
      Summertime_beatdur 1000)   ;BPM=60, beatdur= 1000 ms
(setf Summertime_tune (make-instance 'tune :grid Summertime_grid :beatduration Summertime_beatdur :tunename "Summertime"))
(setf (gethash '"Summertime" *available-grids*) Summertime_tune)

;Song for my father      ;BPM=120, beatdur=500 ms
;--------------------------------------------------------------------------------------------------------------------
(setf SongForMyFather_grid '(;A
                             (f m7 4) (f m7 4) (eb 7 4) (eb 7 4) (db 7 4) (c 7 4) (f m7 4) (f m7 4)
                             ;A
                             (f m7 4) (f m7 4) (eb 7 4) (eb 7 4) (db 7 4) (c 7 4) (f m7 4) (f m7 4)
                             ;B
                             (eb 7 4) (eb 7 4) (f m7 4) (f m7 4) (eb 7 2) (db 7 2) (c 7 4) (f m7 4) (f m7 4)
                             )
      SongForMyFather_beatdur 500)   ;BPM=120, beatdur=500 ms
(setf SongForMyFather_tune (make-instance 'tune :grid SongForMyFather_grid :beatduration SongForMyFather_beatdur :tunename "SongForMyFather"))

(setf (gethash '"SongForMyFather" *available-grids*) SongForMyFather_tune)


;Straight no chaser     ;BPM=181 (beatdur=330 ms) 
;--------------------------------------------------------------------------------------------------------------------
(setf StraightNoChaser_grid '((bb 7 4) (eb 7 4) (bb 7 4) (bb 7 4) (eb 7 4) (eb 7 4)
                              (bb 7 4) (bb 7 4) (f 7 4) (f 7 4) (bb 7 4) (bb 7 4)) 
      StraightNoChaser_beatdur 330)
(setf StraightNoChaser_tune (make-instance 'tune :grid StraightNoChaser_grid :beatduration StraightNoChaser_beatdur :tunename "StraightNoChaser"))

(setf (gethash '"StraightNoChaser" *available-grids*) StraightNoChaser_tune)


;Night in Tunisia
;--------------------------------------------------------------------------------------------------------------------
;"Chansons enjazzees" BPM=240, beatduration=250 ms  
; A / chant: AABA+C AABA+C /  scat: AAB+AABA+C / chant: AABA+C
(setf Nightintunisia_grid '((eb 7 4) (d m7 4) (eb 7 4) (d m7 4) (eb 7 4) (d m7 4) (e m7 2) (a 7 2) (d m7 4)  ; A
                            (eb 7 4) (d m7 4) (eb 7 4) (d m7 4) (eb 7 4) (d m7 4) (e m7 2) (a 7 2) (d m7 4)  ; A

                            (a m7 4) (d 7 4) (g m7 4) (g m7 4) (g m7 4) (c 7 4) (f maj7 4) (e m7 2) (a 7 2)  ; B

                            (eb 7 4) (d m7 4) (eb 7 4) (d m7 4) (eb 7 4) (d m7 4) (e m7 2) (a 7 2) (d m7 4)  ; A

                            (e m7 4) (e m7 4) (eb 7 4) (eb 7 4) (d m7 4) (d m7 4) (g 7 4) (g 7 4)            ; C
                            (g m7 4) (g m7 4) (f# 7 4) (f# 7 4) (f maj7 4) (f maj7 4) (e m7 4) (a 7 4))
      Nightintunisia_beatdur 250)
(setf Nightintunisia_tune (make-instance 'tune :grid Nightintunisia_grid :beatduration Nightintunisia_beatdur :tunename "Nightintunisia"))

(setf (gethash '"Nightintunisia" *available-grids*) Nightintunisia_tune)


;TheManILove, BPM=170
;--------------------------------------------------------------------------------------------------------------------

(setf TheManILove_grid 
     '( (g maj7 4) (g m7 4) (d m7 4) (e 7 4) (c m7 4) (d 7 4) (g maj7 4) (a m7 2) (d 7 2) (g maj7 4) (g m7 4) (d m7 4) (e 7 4) (c m7 4) (d 7 4)  (g maj7 2) (c m7 2) (g maj7 2) (f# m7b5 1) (b 7 1) (e m7 4) (f# m7b5 2) (b 7 2) (e m7 4) (b 7 4) (e m7 4) (f# m7b5 2) (b 7 2) (e m7 2) (e 7 2) (a m7 2) (d 7 2) (g maj7 4) (g m7 4) (d m7 4) (e 7 4) (c m7 4) (d 7 4)  (g maj7 2) (c 7 2) (a m7 2) (d 7 2) (g maj7 4) (g m7 4) (d m7 4) (e 7 4) (c m7 4) (d 7 4) (g maj7 4) (a m7 2) (d 7 2) (g maj7 4) (g m7 4) (d m7 4) (e 7 4) (c m7 4) (d 7 4)  (g maj7 2) (c m7 2) (g maj7 2) (f# m7b5 1) (b 7 1) (e m7 4) (f# m7b5 2) (b 7 2) (e m7 4) (b 7 4) (e m7 4) (f# m7b5 2) (b 7 2) (e m7 2) (e 7 2) (a m7 2) (d 7 2) (g maj7 4) (g m7 4) (d m7 4) (e 7 4) (c m7 4) (d 7 4)  (g maj7 2) (c 7 2) (g maj7 4))
                                                        
      TheManILove_beatdur (bpmtobeatdur 87))
(setf TheManILove_tune (make-instance 'tune :grid TheManILove_grid :beatduration TheManILove_beatdur :tunename "TheManILove" :NbBeatsPerMeasure 4))
(setf (gethash '"TheManILove" *available-grids*) TheManILove_tune)


;AmantsDunJour, BPM=126
;--------------------------------------------------------------------------------------------------------------------
(setf AmantsDunJour_grid 
      '( (d m7 12) (a 7 12) (d m7 12) (a 7 12) (d maj7 12) (a 7 12) (d maj7 12) (a 7 12) (d maj7 3) (g maj7 3) (d maj7 3) (g maj7 3) (d maj7 3) (g maj7 3) (e 7 6) (a 7 3)(d maj7 9) (a 7 12) (d maj7 12)(a 7 12) (d maj7 1) (d m7 11) (a 7 12) (d m7 12) (a 7 12) (d maj7 12) (a 7 12) (d maj7 12) (a 7 12) (d maj7 3) (g maj7 3)(d maj7 3) (g maj7 3)(d maj7 3) (g maj7 3) (e 7 6) (a 7 3)(d maj7 9) (a 7 12) (d maj7 12)(a 7 12) (d maj7 1) (d m7 11) (a 7 12)(d m7 12) (a 7 12) (d m7 12) (a 7 12) (d m7 3) )
                                                        
      AmantsDunJour_beatdur (bpmtobeatdur 126))
(setf AmantsDunJour_tune (make-instance 'tune :grid AmantsDunJour_grid :beatduration AmantsDunJour_beatdur :tunename "AmantsDunJour" :NbBeatsPerMeasure 3))
(setf (gethash '"AmantsDunJour" *available-grids*) AmantsDunJour_tune)


;StLouisBlues, BPM=90
;--------------------------------------------------------------------------------------------------------------------

(setf StLouisBlues_grid 
'( (c 7 4) (f 7 4) (c 7 8) (f 7 8) (c 7 8) (g 7 8) (c 7 8) (c 7 4) (f 7 4) (c 7 8) (f 7 8) (c 7 8) (g 7 8) (c 7 8) (c m7 4) (f m7 4) (g 7 16) (c m7 12) (f m7 4) (g 7 16) (c m7 2) (d 7 2) (g 7 4) (c 7 16) (f 7 8) (c 7 8) (g 7 8) (c 7 8) (c 7 16) (f 7 4) (f m7 4) (c 7 8) (g 7 8) (c 7 8) (c 7 16) (f 7 4) (f m7 4 )(c 7 8) (g 7 8) (c 7 8))                                                        
      StLouisBlues_beatdur (bpmtobeatdur 90))
(setf StLouisBlues_tune (make-instance 'tune :grid StLouisBlues_grid :beatduration StLouisBlues_beatdur :tunename "StLouisBlues" :NbBeatsPerMeasure 4))
(setf (gethash '"StLouisBlues" *available-grids*) StLouisBlues_tune)


;Autumn Leaves     ;BPM=131 (beatdur= 458 ms)     ---> en fait SolMin, Cm7 est le premier accord
;--------------------------------------------------------------------------------------------------------------------
(setf Autumnleaves_grid 
    '((c m7 4) (f 7 4) (bb maj7 4) (eb maj7 4) (a m7b5 4) (d 7b9 4) (g m7 4) (g m7 4) 
      (c m7 4) (f 7 4) (bb maj7 4) (eb maj7 4)  (a m7b5 4) (d 7b9 4) (g m7 4) (g m7 4) 
      (a m7b5 4) (d 7b9 4) (g m7 4) (g m7 4) (c m7 4) (f 7 4) (bb maj7 4) (bb maj7 4) 
      (a m7 4) (d 7b9 4) (g m7 2) (gb 7 2) (f m7 2) (e 7 2) (eb maj7 4) (d 7b9 4) (g m7 4) (g m7 4)) 
 
      Autumnleaves_beatdur (bpmtobeatdur 131))
(setf Autumnleaves_tune (make-instance 'tune :grid Autumnleaves_grid :beatduration Autumnleaves_beatdur :tunename "Autumnleaves" :NbBeatsPerMeasure 4))
(setf (gethash '"Autumnleaves" *available-grids*) Autumnleaves_tune)


;Mahler_SIV_DHLtot, BPM=87
;--------------------------------------------------------------------------------------------------------------------

(setf Mahler_SIV_DHLtot_grid 
; PAGE22
	'( (g maj7 6) (d 7 2)(g maj7 2)  (d 7 2)
(g maj7 2) (d 7 2) (g maj7 2) (a m7 4) (f# m7b5 6)
(a dim 2)(f# m7b5 2) (a m7 2) (d 7 1) (g maj7 1)(d 7 1) (g maj7 1)(c maj7 2)
;PAGE23
(d 7 1)(c maj7 1) (b m7 1) (a m7 1) (g maj7 6) (d 7 2) 
(g maj7 2)  (d 7 2) (g maj7 2) (d 7 2) (g maj7 2) (a m7 4) 
(f# m7b5 4) (a dim 2) (f# m7b5 2) (a m7 2) 
(e 7 4)(a m7 4) (b m7b5 4) 
;P24
(bb maj7 2) (a m7 2) (a m7b5 2) (d 7 2) (g maj7 4)
(e m7 2) (g maj7 2) (d 7 2) (g maj7 2) (e m7 2) (b maj7 2)
(g maj7 1) (e m7 1) (g maj7 1) (b 7 1) (e m7 2) (b 7 2) 
(f# 7 4) (b 7 4)
;P25
(e m7 2) (b 7b9 2) (b 7 1) (e maj7 1) (e m7 3) 
(g maj7 1) (e m7 2) (d maj7 1) (c maj7 1)(b m7 2) (a m7 1) (b m7 1) (c maj7 4) (a m7 4)
(b m7 8)
(a m7 4) (b m7 4)
;P26
(f maj7 4) (b m7 1) (d maj7 1)(b m7 1)(g maj7 1)
(b m7 1) (d maj7 1)(b m7 1)(g maj7 1)(b m7 1) (a m7 1)(g maj7 1)(b m7 1)
(e m7 6)(b 7 2)
(e m7 2)(b 7 2)(e m7 2)(b 7 2)(e m7 2)(c maj7 1)(b 7 1)
;P27
(e m7 2)(f maj7 2)(f# 7 4)
(b m7 1) (f# 7 1) (b m7 1) (b 7 1)(e maj7 1) (g 7 1) (b 7 1) (g 7 1) 
(e m7 4) (f# m7b5 4) 
(f m7 4) (f 7 4) (f# m7b5 2) (e m7 2) 
;P28
(a m7 4) (e m7 2) (f m7 2) 
(c maj7 2) (f# 7 2) (b maj7 2) (e m7 4)
(f m7 8) (f 7 4) (b 7 2) (c maj7 2) 
;P29
(b 7b9 2) (c maj7 2)(e m7 2) (d maj7 1) (c maj7 1) (b m7 2) (a m7 1) (b m7 1) (e m7 4) (d maj7 4) 
(b m7 7) (b 7 1)
(c# m7b5 1) (c# dim 1) (c# m7b5 1) (c# dim 1) (b m7 1) (c maj7 1)  (b m7 1) (a m7 1) 
(g maj7 6) (d 7 2)(g maj7 2) (d 7 6)
;P30 4Tprec
(g maj7 8) 
(d 7 2) (g maj7 2)(b m7 2) (f# 7 2) (b m7 6) 
(d maj7 1) (g# m7b5 1)(c# 7 1) (f# m7 1) (g m7 4)
(c# 7 2) (g maj7 2) (c# 7 2)  (f# m7 2) 
;P31
(e m7 9) (f# 7 3)(b maj7 1) (e m7 2) (a 7 1) 
(d maj7 2) (a 7 2) (d maj7 2) (e 7b9 2) 
(a 7 4) (d maj7 2) (b m7 1) (d 7 1)
;P32
(g m7 2) (d 7b9 2) (g m7 4)
(a m7 1) (a 7 1) (bb maj7 2) (c maj7 1) (bb maj7 1) (a m7 2) (g m7 1) (a m7 1) (bb maj7 4)
(d m7 2) (c maj7 1) (bb maj7 1) (a m7 2) (g m7 1) (a m7 1) (bb maj7 4) (g m7 4) (d maj7 4) 
(f# m7 4) (b m7 14)
;P33 10Tprec
(e m7 1)(b m7 1)
(a m7 4) (b 7 1) (a m7 1) (g maj7 1) (f maj7 1) 
(e maj7 18)(c# m7 2)(b 7 2)(e maj7 4)
;p34 2Tprec
(b 7 4)(e maj7 2)(b 7 2)(e maj7 2)
(a maj7 1)(b 7 1)(e maj7 4)(b 7 4)(e maj7 2)
(g# 7 2)(c# min7 2) (e maj7 1)(b 7b9 1)(e maj7 2)(g# 7 2)(c# min7 2)
(b 7 2)(e maj7 2)(b 7 2)(e maj7 2)(b 7 2)(e maj7 14)
; PAGE 35 10 tps en moins ligne precedente
(b 7 2) (e maj7 2) (b 7 2) 
(e maj7 2)(b 7 2) (e maj7 2)(f# m7 4)(b 7 2) 
(f# m7 2)  (b 7 2)(d# m7b5 1)(g# 7 1) (f# m7 4) (b 7 4) 
(a maj7 2) (b 7 1) (a maj7 1)(g# m7 1) (d# m7b5 1) (e maj7 6)
;p36 2Tprec
(b 7 2)(e maj7 2)(b 7 8) 
(e maj7 4) (g# m7 4)(d# 7 2) (g# m7 6) 
(f# m7 2) (b 7 4) (e maj7 10)
(c# m7 4) (e maj7 10)
;p37 8Tprec
(b 7 2) (e maj7 2) 
(c dim 2) (c# m7 2) (b 7 2) (e maj7 2) (c dim 2) (c# m7 2) (b 7 2)
(e maj7 2)(b 7 2)(e maj7 2)(b 7 2)(e maj7 12))
                                                        
      Mahler_SIV_DHLtot_beatdur (bpmtobeatdur 87))
(setf Mahler_SIV_DHLtot_tune (make-instance 'tune :grid Mahler_SIV_DHLtot_grid :beatduration Mahler_SIV_DHLtot_beatdur :tunename "Mahler_SIV_DHLtot" :NbBeatsPerMeasure 4))
(setf (gethash '"Mahler_SIV_DHLtot" *available-grids*) Mahler_SIV_DHLtot_tune)


;Mahler_SIV_DHL, BPM=340
;--------------------------------------------------------------------------------------------------------------------

(setf Mahler_SIV_DHL_grid 
     '( (g maj7 6) (d 7 2) (g maj7 2)  (d 7 2) (g maj7 2) (d 7 2) 
(g maj7 2) (a m7 4) (f# m7b5 4) (a dim 2) (f# m7b5 2) (a m7 2) (e 7 4)
(a m7 4) (b m7b5 2) (b dim 2)(bb maj7 2) (a m7 2) (a m7b5 2) (d 7 2) (g maj7 4)
(e m7 2) (g maj7 2) (d 7 2) (g maj7 2) (e m7 2) (b maj7 2) (g maj7 1) (e m7 1) (g maj7 1) (b 7 1) (e m7 2) (b 7 2) 
(f# 7 4) (b 7 4) (e m7 2) (b 7b9 2) (b 7 1) (e maj7 1) (e m7 3) (g maj7 1) (e m7 2) (d maj7 1) (c maj7 1)
(b m7 2) (a m7 1) (b m7 1) (c maj7 4) (a m7 4) (e m7 4) (b m7 1) (f# 7 1) (b m7 1) (b 7 1)
(e maj7 1) (g 7 1) (b 7 1) (g 7 1) (a m7 4) (f# m7b5 4) (f m7 4) (f 7 4)
(f# m7b5 2) (e m7 2)  (a m7 4) (e m7 2) (f m7 2) (c maj7 2) (f# 7 2) (b maj7 2) (e m7 4)
(f m7 8) (f 7 4) (b 7 2) (c maj7 2) (b 7b9 2) (c maj7 2)
; PAGE2
(e m7 2) (d maj7 1) (c maj7 1) (b m7 2) (a m7 1) (b m7 1) (e m7 4) (d maj7 4) (e m7 4) (b 7 4)
(c# m7b5 1) (c# dim 1) (c# m7b5 1) (c# dim 1) (b m7 1) (c maj7 1)  (b m7 1) (a m7 1) (g maj7 6) (d 7 2)
(g maj7 2) (d 7 6)  (g maj7 8) (d 7 2) (g maj7 2)
(b m7 2) (f# 7 2) (b m7 6) (d maj7 1) (g# m7b5 1) (c# 7 1) (f# m7 1) (g m7 4)
(c# 7 2) (g maj7 2) (c# 7 2)  (f# m7 2) (e m7 9) (f# 7 3)
(b maj7 1) (e m7 2) (a 7 1) (d maj7 2) (a 7 2) (d maj7 2) (e 7b9 2) (a 7 4) (d maj7 2) (b m7 1) (d 7 1)
(g m7 2) (d 7b9 2) (g m7 4) (a m7 1) (a 7 1) (bb maj7 2) (c maj7 1) (bb maj7 1) (a m7 2) (g m7 1) (a m7 1) (bb maj7 4)
(d m7 2) (c maj7 1) (bb maj7 1) (a m7 2) (g m7 1) (a m7 1) (bb maj7 4) (g m7 4) (d maj7 4) (f# m7 4)
(b 7 1) (a m7 1) (g m7 1) (f m7 1) (e maj7 18)
; PAGE 3 2 tps en moins ligne precedente
(b 7 2) (e maj7 2) (b 7 2) (e maj7 2) (f# m7 4)  (b 7 2) (f# m7 2)  (b 7 2)
(g# 7 2) (f# m7 4) (b 7 4) (a maj7 2) (b 7 4) (e maj7 6)
(b 7 2) (e maj7 2) (b 7 8) (e maj7 4) (g# m7 4)
(d# 7 2) (g# m7 6) (f# m7 2) (b 7 4) (e maj7 10)
(c# m7 4) (e maj7 10)
(b 7 2) (e maj7 2) (c dim 2) (c# m7 2) (b 7 2) (e maj7 2) (c dim 2) (c# m7 2) (b 7 2)
(e maj7 8))
                                                        
      Mahler_SIV_DHL_beatdur (bpmtobeatdur 87))
(setf Mahler_SIV_DHL_tune (make-instance 'tune :grid Mahler_SIV_DHL_grid :beatduration Mahler_SIV_DHL_beatdur :tunename "Mahler_SIV_DHL" :NbBeatsPerMeasure 4))
(setf (gethash '"Mahler_SIV_DHL" *available-grids*) Mahler_SIV_DHL_tune)


;Mahler_DKW_DIL     ;BPM=131 (beatdur= 458 ms)    
;--------------------------------------------------------------------------------------------------------------------
(setf Mahler_DKW_DIL_grid 
    '((bb 7b9 4) (eb m7 4) (bb 7b9 4) (eb m7 2) (bb 7b9 2) (eb m7 2) (bb 7 2) (eb m7 2) (e m7 2)(eb m7 2) (e m7 2) (eb m7 1) (bb 7b9 1) (eb m7 1) (bb 7 1) (b maj7 1) (eb 7b9 1) (b maj7 1) (bb 7b9 7)
 (e m7 2)  (bb 7 6) (eb m7 4) (bb maj7 2) (bb 7b9 4) (gb maj7 4) (ab m7b5 2) (gb m7 2) (ab m7b5 2) (bb 7b9 2) (eb m7 2) (bb m7b5 2) (eb m7 2) (bb maj7 2)
;P2 "80"
(b maj7 2) (bb maj7 2) (a maj7 2) (ab maj7 2) (eb m7 1) (db m7 1) (eb m7 1) (bb 7b9 1) (eb m7 1) (bb 7b9 1) (b maj7 2) (b 7 6) (eb m7 2) (bb 7 6) (eb m7 4) (bb maj7 2) (bb 7b9 2) (db 7 2) (gb maj7 2) (a maj7 2)  (bb 7b9 2) (a maj7 2) (db 7 2) (a maj7 1) (g maj7 1) (eb m7 2) (e maj7 2) (eb m7 2) (bb m7 2) (b maj7 2) (bb maj7 2) (a maj7 2) (ab maj7 2) (eb m7 1) (bb 7b9 1) (eb m7 1) (bb 7b9 1) (eb m7 1) (bb 7b9 1) (eb m7 1) (f 7 1) (eb m7 8) (bb 7 6) (eb m7 4)
 ; P3 2 bts en plus "174"
(bb 7b9 8) (bb maj7 2) (eb m7 2) (bb 7 2) (eb m7 2) (bb 7 2) (eb m7 2) (bb 7 2) (eb m7 2) (bb m7 2) (b maj7 2) (eb m7 2) (b maj7 4) (bb 7b9 4) (b 7 2) (bb 7 2) (a 7 1) (a dim 1) (bb maj7 6))

      Mahler_DKW_DIL_beatdur (bpmtobeatdur 131))
(setf Mahler_DKW_DIL_tune (make-instance 'tune :grid Mahler_DKW_DIL_grid :beatduration Mahler_DKW_DIL_beatdur :tunename "Mahler_DKW_DIL" :NbBeatsPerMeasure 2))
(setf (gethash '"Mahler_DKW_DIL" *available-grids*) Mahler_DKW_DIL_tune)


;Mahler_DKW_LdHV     ;BPM=131 (beatdur= 458 ms)    
;--------------------------------------------------------------------------------------------------------------------
(setf Mahler_DKW_LdHV_grid
    '((d maj7 9) (f# m7 1) (b m7 1) (a maj7 1) (d maj7 1) (g maj7 1) (a maj7 1) (f# m7 1) (b m7 1) (a maj7 1) (d maj7 2) (a maj7 4) (b m7 1) (f# m7 1) (b m7 1) (f# m7 1) (d maj7 1) (b m7 1) (a maj7 1) (f# m7 1) (d maj7 2) (a 7 1) (d maj7 1) (a 7 1) (d maj7 6) (a maj7 1) (b m7 1) (a m7 1) (b m7 1) (a maj7 1) (d maj7 1) (g maj7 1) (a maj7 1) (f# m7 1) (b m7 1) (a maj7 1) (d maj7 2) (a maj7 4) (b m7 1) (a maj7 1) (b m7 1) (f# m7 1) (b m7 1)  (g maj7 1) (f# m7 1) (d maj7 3) (a 7 2) (d maj7 8) (d m7 3) (g m7 3) (f maj7 1) (g m7 1) (c maj7 1) (d m7 1) (g m7 1) (f maj7 1) (bb maj7 1) (eb maj7 1) (a maj7 4) (d maj7 5) (a 7 1) (d maj7 2) (a 7 3) (d maj7 2) (f# m7 2) (a maj7 1) (a 7b9 8) (f# maj7 2) (f# m7 2) (b m7 5) (f# 7 1) (b m7 2) (a 7 3) (d maj7 1) (a maj7 1) (g maj7 1) (f# m7 1) (e m7 1) (d maj7 6) (b m7 1) (a maj7 1)  (g m7 1) (d maj7 1) (g maj7 1) (d maj7 1) (g maj7 1) (d maj7 1)(g maj7 1) (d maj7 4) (g maj7 1) (d maj7 2) (b m7 1) (a maj7 1) (b m7 1) (a maj7 1) (b m7 1) (a maj7 1) (d maj7 1) (g maj7 1) (a maj7 1) (f# m7 1) (b m7 1) (a maj7 1) (d maj7 2) (a maj7 4) (b m7 1) (a maj7 1) (b m7 1) (d maj7 1) (b m7 1) (g maj7 1) (f# m7 1) (d maj7 3) (b m7 1) (a maj7 1) (g maj7 1)  (d maj7 1) (g maj7 1)  (d maj7 1) (g maj7 1)  (d maj7 1) (g maj7 1)  (d maj7 9)) 

      Mahler_DKW_LdHV_beatdur (bpmtobeatdur 131))
(setf Mahler_DKW_LdHV_tune (make-instance 'tune :grid Mahler_DKW_LdHV_grid :beatduration Mahler_DKW_LdHV_beatdur :tunename "Mahler_DKW_LdHV" :NbBeatsPerMeasure 2))
(setf (gethash '"Mahler_DKW_LdHV" *available-grids*) Mahler_DKW_LdHV_tune)


;Mozart_MiTradi, BPM=140
;--------------------------------------------------------------------------------------------------------------------

(setf Mozart_MiTradi_grid 
 '( (eb maj7 4) (f m7 4) (bb 7 4) (eb maj7 6) (bb 7 2) (eb maj7 6) (bb 7 2) (eb maj7 4) (bb 7 3) (c m7 1) (f m7 2) (b 7 2) (eb maj7 4) (b dim 3) (c m7 1) (f m7 4) (bb 7 4) (eb maj7 4) (f 7 4) (bb maj7 4) (f 7 12) (bb maj7 4) (f maj7 8) (c 7 4) (f maj7 4) (c 7 4) (f 7 4) (bb maj7 4) (eb maj7 4) (f 7 4) (g m7 4) (bb maj7 4) (c m7 4) (f 7 2) (g m7 2) (a m7b5 2) (bb maj7 2) (c m7 4) (f 7 4) (bb maj7 8) (eb maj7 4) (f m7 4) (bb 7 4) (eb maj7 6) (bb 7 2) (eb maj7 6) (bb 7 2) (eb maj7 4) (bb 7 3) (c m7 1) (f m7 2) (b 7 2) (eb maj7 4) (b dim 3) (c m7 1) (f m7 4) (bb 7 4) (eb m7 4) (b 7 4) (e m7 4) (b 7 4) (e m7 4) (b 7 4) (e m7 4) (db 7 4) (gb maj7 4) (bb m7 4) (c 7 4) (eb maj7 4) (d 7 4) (g m7 4) (a m7b5 4) (d 7 4) (eb maj7 4) (g m7 4) (ab maj7 2) (eb 7 2) (ab maj7 2) (a 7 2) (d 7 4) (g 7 4) (c m7 2) (a m7b5 2) (d 7 4) (g m7b5 4) (c 7 4) (f m7b5 4) (b 7 4) (eb maj7 4) (f m7 4) (bb 7 4) (eb maj7 6) (bb 7 2) (eb maj7 6) (bb 7 2) (eb maj7 4) (bb 7 3) (c m7 1) (f m7 2) (b 7 2) (eb maj7 4) (b dim 3) (c m7 1) (f m7 4) (bb 7 4) (eb 7 4) (ab maj7 4) (eb maj7 4)(bb 7 4) (eb 7 4) (ab maj7 4) (eb maj7 4) (bb 7 4) (c m7 2) (f 7 2) (bb 7 10) (eb maj7 6) (f m7 4) (bb 7 8) (eb maj7 2) (bb 7 6) (c m7 2) (ab m7 2) (bb 7 4) (eb maj7 2) (bb 7 6) (c m7 2) (ab m7 2) (bb 7 4) (eb maj7 2) (f m7 2) (bb 7 4) (eb maj7 2) (f m7 2) (bb 7 4) (eb maj7 4))
  
 Mozart_MiTradi_beatdur (bpmtobeatdur 140))
(setf Mozart_MiTradi_tune (make-instance 'tune :grid Mozart_MiTradi_grid :beatduration Mozart_MiTradi_beatdur :tunename "Mozart_MiTradi" :NbBeatsPerMeasure 4))
(setf (gethash '"Mozart_MiTradi" *available-grids*) Mozart_MiTradi_tune)


;Mozart_MiTradib, BPM=70 a la blanche
;--------------------------------------------------------------------------------------------------------------------

(setf Mozart_MiTradib_grid 
 '( (eb maj7 2) (f m7 2) (bb 7 2) (eb maj7 3) (bb 7 1) (eb maj7 3) (bb 7 1) (eb maj7 2) (bb 7 1) (c m7 1) (f m7 1) (b 7 1) (eb maj7 2) (b dim 1) (c m7 1) (f m7 2) (bb 7 2) (eb maj7 2) (f 7 2) (bb maj7 2) (f 7 6) (bb maj7 2) (f maj7 4) (c 7 2) (f maj7 2) (c 7 2) (f 7 2) (bb maj7 2) (eb maj7 2) (f 7 2) (g m7 2) (bb maj7 2) (c m7 2) (f 7 1) (g m7 1) (a m7b5 1) (bb maj7 1) (c m7 2) (f 7 2) (bb maj7 4) (eb maj7 2) (f m7 2) (bb 7 2) (eb maj7 3) (bb 7 1) (eb maj7 3) (bb 7 1) (eb maj7 2) (bb 7 1) (c m7 1) (f m7 1) (b 7 1) (eb maj7 2) (b dim 1) (c m7 1) (f m7 2) (bb 7 2) (eb m7 2) (b 7 2) (e m7 2) (b 7 2) (e m7 2) (b 7 2) (e m7 2) (db 7 2) (gb maj7 2) (bb m7 2) (c 7 2) (eb maj7 2) (d 7 2) (g m7 2) (a m7b5 2) (d 7 2) (eb maj7 2) (g m7 2) (ab maj7 1) (eb 7 1) (ab maj7 1) (a 7 1) (d 7 2) (g 7 2) (c m7 1) (a m7b5 1) (d 7 2) (g m7b5 2) (c 7 2) (f m7b5 2) (b 7 2) (eb maj7 2) (f m7 2) (bb 7 2) (eb maj7 3) (bb 7 1) (eb maj7 3) (bb 7 1) (eb maj7 2) (bb 7 1) (c m7 1) (f m7 1) (b 7 1) (eb maj7 2) (b dim 1) (c m7 1) (f m7 2) (bb 7 2) (eb 7 2) (ab maj7 2) (eb maj7 2) (bb 7 2) (eb 7 2) (ab maj7 2) (eb maj7 2) (bb 7 2) (c m7 1) (f 7 1) (bb 7 5) (eb maj7 3) (f m7 2) (bb 7 4) (eb maj7 1) (bb 7 3) (c m7 1) (ab m7 1) (bb 7 2) (eb maj7 1) (bb 7 3) (c m7 1) (ab m7 1) (bb 7 2) (eb maj7 1) (f m7 1) (bb 7 2) (eb maj7 1) (f m7 1) (bb 7 2) (eb maj7 2))

 Mozart_MiTradib_beatdur (bpmtobeatdur 70))
(setf Mozart_MiTradib_tune (make-instance 'tune :grid Mozart_MiTradib_grid :beatduration Mozart_MiTradib_beatdur :tunename "Mozart_MiTradib" :NbBeatsPerMeasure 2))
(setf (gethash '"Mozart_MiTradib" *available-grids*) Mozart_MiTradib_tune)


;Mozart_Zarmob, BPM=70 a la blanche
;--------------------------------------------------------------------------------------------------------------------

(setf Mozart_Zarmob_grid 
 '( (eb maj7 2) (f m7 2) (bb 7 2) (eb maj7 3) (bb 7 1) (eb maj7 3) (bb 7 1) (eb maj7 2) (bb 7 1) (c m7 1) (f m7 1) (b 7 1) (eb maj7 2) (b dim 1) (c m7 1) (f m7 2) (bb 7 2) (eb maj7 2) (f 7 2) (bb maj7 2) (f 7 6) (bb maj7 2) (f maj7 4) (c 7 2) (f maj7 2) (c 7 2) (f 7 2) (bb maj7 2) (eb maj7 2) (f 7 2) (g m7 2) (bb maj7 2) (c m7 2) (f 7 1) (g m7 1) (a m7b5 1) (bb maj7 1) (c m7 2) (f 7 2) (bb maj7 4) (eb maj7 2) (f m7 2) (bb 7 2) (eb maj7 3) (bb 7 1) (eb maj7 3) (bb 7 1) (eb maj7 2) (bb 7 1) (c m7 1) (f m7 1) (b 7 1) (eb maj7 2) (b dim 1) (c m7 1) (f m7 2) (bb 7 2) (eb m7 2) (b 7 2) (e m7 2) (b 7 2) (e m7 2) (b 7 2) (e m7 2) (db 7 2) (gb maj7 2) (bb m7 2) (c 7 2) (eb maj7 2) (d 7 2) (g m7 2) (a m7b5 2) (d 7 2) (eb maj7 2) (g m7 2) (ab maj7 1) (eb 7 1) (ab maj7 1) (a 7 1) (d 7 2) (g 7 2) (c m7 1) (a m7b5 1) (d 7 2) (g m7b5 2) (c 7 2) (f m7b5 2) (b 7 2) (eb maj7 2) (f m7 2) (bb 7 2) (eb maj7 3) (bb 7 1) (eb maj7 3) (bb 7 1) (eb maj7 2) (bb 7 1) (c m7 1) (f m7 1) (b 7 1) (eb maj7 2) (b dim 1) (c m7 1) (f m7 2) (bb 7 2) (eb 7 2) (ab maj7 2) (eb maj7 2) (bb 7 2) (eb 7 2) (ab maj7 2) (eb maj7 2) (bb 7 2) (c m7 1) (f 7 1) (bb 7 5) (eb maj7 3) (f m7 2) (bb 7 4) (eb maj7 1) (bb 7 3) (c m7 1) (ab m7 1) (bb 7 2) (eb maj7 1) (bb 7 3) (c m7 1) (ab m7 1) (bb 7 2) (eb maj7 1) (f m7 1) (bb 7 2) (eb maj7 1) (f m7 1) (bb 7 2) (eb maj7 2 ) 
; fin MiTradi
(f m7 2) (bb 7 2) (f m7 1) (bb 7 1) (eb maj7 8)
; Porgi à la croche
(bb 7 8) (eb maj7 4) (c m7 2) (g m7 2) (ab maj7 2) (eb maj7 2) (bb 7 2) (eb maj7 1) (f m7 1) (bb maj7 3) (f 7 1) (bb maj7 4) (f 7 4) (bb maj7 4) (c m7 2) (f 7 2) (bb maj7 4) (f 7 4) (bb maj7 4) (c m7 2) (f 7 2) (bb maj7 6) (bb 7 4) (eb maj7 2) (bb 7 2) (eb maj7 2) (c dim 2) (f 7 2) (bb 7b9 4) (c m7 2) (eb maj7 2) (f m7 4) (eb maj7 1) (ab maj7 1) (g m7 1) (g 7b9 1) (c m7 2) (ab maj7 2) (bb 7 4) (eb maj7 4) (bb 7 4) (eb maj7 4) (bb 7 4) (eb maj7 2) (bb 7 2) (eb maj7 2) (bb 7 2) (eb maj7 4)  )

 Mozart_Zarmob_beatdur (bpmtobeatdur 70))
(setf Mozart_Zarmob_tune (make-instance 'tune :grid Mozart_Zarmob_grid :beatduration Mozart_Zarmob_beatdur :tunename "Mozart_Zarmob" :NbBeatsPerMeasure 2))
(setf (gethash '"Mozart_Zarmob" *available-grids*) Mozart_Zarmob_tune)


;Milord, BPM=112
;--------------------------------------------------------------------------------------------------------------------

(setf Milord_grid 
'( (d maj7 4) (g maj7 4) (d maj7 4) (e 7 2) (a 7 2) (d maj7 4) (g maj7 4) (d maj7 4) (e 7 2) (a 7 2) (d maj7 4) (g maj7 4) (d maj7 4) (g maj7 8) (d m7 12) (c maj7 4) (bb maj7 16) (d m7 2) (c maj7 2) (d m7 2) (a m7 2) (bb maj7 2) (a maj7 2) (bb maj7 5) (a 7 1) (d maj7 4) (g maj7 4) (d maj7 4) (e 7 2) (a 7 2) (d maj7 4) (g maj7 4) (d maj7 4) (e 7 2) (a 7 2) (d maj7 4) (g maj7 4) (d maj7 4) (g maj7 8) (d m7 12) (c maj7 4) (bb maj7 16) (d m7 2) (c maj7 2) (d m7 2) (a m7 2) (bb maj7 2) (a maj7 2) (bb maj7 5) (a 7 1) (d maj7 4) (g maj7 4) (d maj7 4) (e 7 2) (a 7 2) (d maj7 4) (g maj7 4) (d maj7 4) (e 7 2) (a 7 2) (d maj7 4) (g maj7 4)(d maj7 4) (g maj7 2) (d maj7 8) (g maj7 4) (d maj7 4) (e 7 2) (a 7 2) (d maj7 4) (g maj7 4) (d maj7 4) (e 7 2) (a 7 2) (d maj7 4) (g maj7 4) (d maj7 4) (e 7 2) (a 7 2) (d maj7 4) (g maj7 4) (d maj7 4) (e 7 2) (a 7 2) (d maj7 4) (g maj7 4) (d maj7 4) (e 7 2) (a 7 2) (d maj7 4) (g maj7 4) (d maj7 4) (e 7 2) (a 7 4)  (d maj7 4) (g maj7 4) (d maj7 4) (e 7 1) (a 7 1) (d maj7 6))                                                        
      Milord_beatdur (bpmtobeatdur 112))
(setf Milord_tune (make-instance 'tune :grid Milord_grid :beatduration Milord_beatdur :tunename "Milord" :NbBeatsPerMeasure 2))
(setf (gethash '"Milord" *available-grids*) Milord_tune)


;Puccini_Liu, BPM=68
;--------------------------------------------------------------------------------------------------------------------

(setf Puccini_Liu_grid 
'( (eb m7 10) (bb maj7 2) (eb m7 4) (ab m7 2) (eb m7 4) (c m7b5 2) (bb m7 4)  (ab m7 2) (bb m7 6) (b maj7 4) (f m7b5 2) (eb m7 9) (f m7b5 4) (bb 7 1) (eb m7 4) (ab m7 2) (bb 7 2) (c m7b5 2) (bb m7 4) (c m7b5 1) (b maj7 1) (bb 7 4) (bb 7b9 2) (eb m7 8))
      Puccini_Liu_beatdur (bpmtobeatdur 68))
(setf Puccini_Liu_tune (make-instance 'tune :grid Puccini_Liu_grid :beatduration Puccini_Liu_beatdur :tunename "Puccini_Liu" :NbBeatsPerMeasure 2))
(setf (gethash '"Puccini_Liu" *available-grids*) Puccini_Liu_tune)


;Puccini_Liu2, a la croche BPM=110
;--------------------------------------------------------------------------------------------------------------------

(setf Puccini_Liu2_grid 
'( (eb m7 20) (bb maj7 4) (eb m7 8) (ab m7 4) (eb m7 8) (c m7b5 4) (bb m7 8)  (ab m7 4) (bb m7 12) (b maj7 8) (f m7b5 4) (eb m7 18) (f m7b5 8) (bb 7 2) (eb m7 8) (ab m7 4) (bb 7 4) (c m7b5 4) (bb m7 8) (c m7b5 2) (b maj7 2) (bb 7 8) (bb 7b9 4) (eb m7 16))
      Puccini_Liu2_beatdur (bpmtobeatdur 110))
(setf Puccini_Liu2_tune (make-instance 'tune :grid Puccini_Liu2_grid :beatduration Puccini_Liu2_beatdur :tunename "Puccini_Liu2" :NbBeatsPerMeasure 4))
(setf (gethash '"Puccini_Liu2" *available-grids*) Puccini_Liu2_tune)


;MonDieu, BPM=42
;--------------------------------------------------------------------------------------------------------------------

(setf MonDieu_grid 
'( (a 7 4) (d maj7 2) (f# 7 2) (b m7 4) (g maj7 2) (g# dim 2) (a 7 4) (d maj7 2) (f# 7 2) (b m7 4) (g maj7 2) (a 7 2) (d maj7 4) (f# 7 4) (b m7 4) (e m7 4) (a 7 4) (d maj7 2) (f# 7 2) (b m7 4) (g maj7 2) (a 7 2) (f# m7b5 2) (b 7 2) (e m7 2) (a 7 2) (d maj7 2) (f maj7 2) (d maj7 4))                                                        
      MonDieu_beatdur (bpmtobeatdur 42))
(setf MonDieu_tune (make-instance 'tune :grid MonDieu_grid :beatduration MonDieu_beatdur :tunename "MonDieu" :NbBeatsPerMeasure 4))
(setf (gethash '"MonDieu" *available-grids*) MonDieu_tune)


;MonDieu2, BPM=84 a la croche
;--------------------------------------------------------------------------------------------------------------------
(setf MonDieu2_grid 
'( (a 7 8) (d maj7 4) (f# 7 4) (b m7 8) (g maj7 4) (g# dim 4) (a 7 8) (d maj7 4) (f# 7 4) (b m7 8) (g maj7 4) (a 7 4) (d maj7 8) (f# 7 8) (b m7 8) (e m7 8) (a 7 8) (d maj7 4) (f# 7 4) (b m7 8) (g maj7 4) (a 7 4) (f# m7b5 4) (b 7 4) (e m7 4) (a 7 4) (d maj7 4) (f maj7 4) (d maj7 8))                                                        
      MonDieu2_beatdur (bpmtobeatdur 84))
(setf MonDieu2_tune (make-instance 'tune :grid MonDieu2_grid :beatduration MonDieu2_beatdur :tunename "MonDieu2" :NbBeatsPerMeasure 8))
(setf (gethash '"MonDieu2" *available-grids*) MonDieu2_tune)


;MonDieutot, BPM=42
;--------------------------------------------------------------------------------------------------------------------

(setf MonDieutot_grid 
'( (ab 7 4) (db maj7 2) (f 7 2) (bb m7 4) (f# maj7 2) (g dim 2) (ab 7 4) (db maj7 2) (f 7 2) (bb m7 4) (f# maj7 2) (ab 7 2) (db maj7 4) (f 7 4) (bb m7 4) (eb m7 4) (ab 7 4) (db maj7 2) (f 7 2) (bb m7 4) (f# maj7 2) (ab 7 2) 
 (db maj7 2) (a 7 2) (d maj7 2) (f# 7 2) (b m7 4) (g maj7 2) (g# dim 2) (a 7 4) (d maj7 2) (f# 7 2) (b m7 4) (g maj7 2) (a 7 2) (d maj7 4) (f# 7 4) (b m7 4) (e m7 4) (a 7 4) (d maj7 2) (f# 7 2) (b m7 4) (g maj7 2) (a 7 2) (f# m7b5 2) (b 7 2) (e m7 2) (a 7 2) (d maj7 2) (f maj7 2) (d maj7 4))                                                        
      MonDieutot_beatdur (bpmtobeatdur 42))
(setf MonDieutot_tune (make-instance 'tune :grid MonDieutot_grid :beatduration MonDieutot_beatdur :tunename "MonDieutot" :NbBeatsPerMeasure 4))
(setf (gethash '"MonDieutot" *available-grids*) MonDieutot_tune)


;MonDieutot2, BPM=84 a la croche
;--------------------------------------------------------------------------------------------------------------------
(setf MonDieutot2_grid 
'( (ab 7 8) (db maj7 4) (f 7 4) (bb m7 8) (f# maj7 4) (g dim 4) (ab 7 8) (db maj7 4) (f 7 4) (bb m7 8) (f# maj7 4) (ab 7 4) (db maj7 8) (f 7 8) (bb m7 8) (eb m7 8) (ab 7 8) (db maj7 4) (f 7 4) (bb m7 8) (f# maj7 4) (ab 7 4) 
 (db maj7 4) (a 7 4) (d maj7 4) (f# 7 4) (b m7 8) (g maj7 4) (g# dim 4) (a 7 8) (d maj7 4) (f# 7 4) (b m7 8) (g maj7 4) (a 7 4) (d maj7 8) (f# 7 8) (b m7 8) (e m7 8)(a 7 8) (d maj7 4) (f# 7 4) (b m7 8) (g maj7 4) (a 7 4)
(f# m7b5 4) (b 7 4) (e m7 4) (a 7 4) (d maj7 4) (f maj7 4) (d maj7 8))                                                        
      MonDieutot2_beatdur (bpmtobeatdur 84))
(setf MonDieutot2_tune (make-instance 'tune :grid MonDieutot2_grid :beatduration MonDieu2_beatdur :tunename "MonDieutot2" :NbBeatsPerMeasure 8))
(setf (gethash '"MonDieutot2" *available-grids*) MonDieutot2_tune)


;ImaFoolToWantYou, BPM=63
;--------------------------------------------------------------------------------------------------------------------
(setf ImaFoolToWantYou_grid 
'( (e 7b9 4) (a m7 6) (a 7b9  2) (d m7 4) (b m7b5 4) (a m7 4) (f maj7 4) (b m7b5 4) (e 7b9 4) (a m7 6) (a 7b9  2) (d m7 4) (b m7b5 4) (a m7 4) (f maj7 4) (b m7b5 2) (e 7b9 2) (a m7 4) (d m7 6) (g 7 2) (c dim 2) (c maj7 6) (d m7 6) (g 7 2) (c maj7 8) (b m7b5 4) (e 7b9 4) (a m7 8) (f 7 8) (b m7b5 4) (e 7b9 4) (a m7 6) (a 7b9 2) (d m7 4) (b m7b5 4) (a m7 4) (f maj7 4) (b m7b5 4) (e 7 2) (e 7b9 2) (a m7 8) (f 7 4) (e 7b9 4) (a m7 4) (d m7 2) (e 7 2) (a m7 4))
      ImaFoolToWantYou_beatdur (bpmtobeatdur 63))
(setf ImaFoolToWantYou_tune (make-instance 'tune :grid ImaFoolToWantYou_grid :beatduration ImaFoolToWantYou_beatdur :tunename "ImaFoolToWantYou" :NbBeatsPerMeasure 4))
(setf (gethash '"ImaFoolToWantYou" *available-grids*) ImaFoolToWantYou_tune)


;VieEnRRose, BPM= 72
;--------------------------------------------------------------------------------------------------------------------

(setf VieEnRose_grid 
'( (eb 7 2) (ab maj7 3) (a dim 1) (bb m7 2) (eb 7 2) (ab maj7 1) (gb 7 1) (f 7b9 2) (bb m7 2) (eb 7 2) (ab maj7 12) (bb m7 2) (eb 7 2) (bb m7 4) (eb 7 4) (bb m7 2) (eb 7 2) (d dim 2) (eb 7 2) (ab maj7 10) (ab 7 2) (db maj7 4) (db m7 4) (ab maj7 4) (bb 7 6) (bb m7 2) (eb 7b9 2) (ab maj7 8) (bb m7 2) (eb 7 2) (ab maj7 4) (ab maj7 3) (a dim 1) (bb m7 2) (eb 7 2) (ab maj7 1) (gb 7 1) (f 7b9 2) (bb m7 2) (eb 7 2) (ab maj7 12) (bb m7 2) (eb 7 2) (bb m7 4) (eb 7 4) (bb m7 2) (eb 7 2) (d dim 2) (eb 7 2) (ab maj7 10) (ab 7 2) (db maj7 4) (db m7 4) (ab maj7 4) (bb 7 6) (bb m7 2) (eb 7b9 2) (ab maj7 8) (bb m7 2) (eb 7 2) (ab maj7 8) (bb m7 2) (eb 7 2) (ab maj7 8))                                                        
      VieEnRose_beatdur (bpmtobeatdur 72))
(setf VieEnRose_tune (make-instance 'tune :grid VieEnRose_grid :beatduration VieEnRose_beatdur :tunename "VieEnRose" :NbBeatsPerMeasure 2))
(setf (gethash '"VieEnRose" *available-grids*) VieEnRose_tune)


;YouDontKnowWhatLoveIs, BPM=63
;--------------------------------------------------------------------------------------------------------------------
(setf YouDontKnowWhatLoveIs_grid 
'( (f 7 4) (d 7b9  2) (c 7b9  2) (f m7 2) (c 7b9  2) (db maj7 4) (g m7b5 2) (c 7b9  2) (f m7 2)  (ab 7 2) (db maj7 4) (g m7b5 2) (c 7b9  2)
; reprise A’
(f 7 4) (d 7b9  2) (c 7b9  2) (f m7 2) (c 7b9  2) (db maj7 4) (g m7b5 2) (c 7b9  2) (f m7 2)  (ab 7 2) (db maj7 2) (c 7b9  2) (f m7 4)
; pont
(bb min7 2) (eb 7 2) (ab maj7 4) (bb min7 2) (eb 7 2) (ab maj7 4) (d min7 2) (g 7 2) (c maj7 4) (d 7b9  4) (c 7b9  4)
; A’’
(f 7 4) (d 7b9  2) (c 7b9  2) (f m7 2) (c 7b9  2) (db maj7 4) (g m7b5 2) (c 7b9  2) (f m7 2)  (ab 7 2) (db maj7 2) (c 7b9  2) (f m7 4))
      YouDontKnowWhatLoveIs_beatdur (bpmtobeatdur 63))
(setf YouDontKnowWhatLoveIs_tune (make-instance 'tune :grid YouDontKnowWhatLoveIs_grid :beatduration YouDontKnowWhatLoveIs_beatdur :tunename "YouDontKnowWhatLoveIs" :NbBeatsPerMeasure 4))
(setf (gethash '"YouDontKnowWhatLoveIs" *available-grids*) YouDontKnowWhatLoveIs_tune)


;MyRentPartyLong
;--------------------------------------------------------------------------------------------------------------------
(setf 
	MyRentPartyLong_grid (quote (
                                     ;(2 0)
                                     (f rien 3) (bb deb 1)
                                     ;(2 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(2 1)(1 1)(2 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(2 1)(1 1)(2 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(2 1)(1 1)(2 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(2 1)(1 1)(2 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(1 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(0 2)(1 1)(1 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(1 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(0 2)(1 1)(1 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(1 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(0 2)(1 1)(1 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(1 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(0 2)(1 1)(1 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(2 1)(1 1)(2 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(2 1)(1 1)(2 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(2 1)(1 1)(2 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(2 1)(1 1)(2 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(1 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(0 2)(1 1)(1 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(1 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(0 2)(1 1)(1 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(1 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(0 2)(1 1)(1 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(1 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(0 2)(1 1)(1 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 2)(1 1)(1 1)

                                     ;(0 2)(0 2)(1 1)(2 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(1 0)(2 0)(1 1)(1 1)

                                     ;(0 2)(2 0)(1 1)(1 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 2)(1 1)(1 1)

                                     ;(0 2)(0 2)(1 1)(2 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(1 0)(2 0)(1 1)(1 1)

                                     ;(0 2)(2 0)(1 1)(2 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 0)(1 1)(0 2)

                                     ;(2 0)(2 1)(1 1)(2 0)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 0)(1 1)(0 2)

                                     ;(2 0)(2 0)(1 1)(2 0)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 0)(1 1)(0 2)

                                     ;(2 0)(2 0)(1 1)(2 0)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 2)(1 1)(0 2)

                                     ;(2 2)(1 1)(2 0)
                                     (c m7 2) (bb 7 2) ;(ab maj7 2) (bb 7 1)
                                     ) )
	MyRentPartyLong_beatdur (bpmtobeatdur 87))
	(setf clusters_centroids (list :Chroma (list  0.478 0.24162 0.67584 ) :TonalCentroid (list  -0.0034029 -0.57528 -0.70782 ) ))
(setf MyRentPartyLong_tune (make-instance (quote tune) :grid MyRentPartyLong_grid :beatduration MyRentPartyLong_beatdur :tunename "MyRentPartyLong" :NbBeatsPerMeasure 4 :DataFromAnalysis  (list  0.478 0.24162 0.67584 ) :chapters '(1 33)))
(setf (gethash (quote "MyRentPartyLong") *available-grids*) MyRentPartyLong_tune)


;MyRentPartyLong-MEM
;--------------------------------------------------------------------------------------------------------------------
(setf 
	MyRentPartyLong-MEM_grid (quote (
                                     ;(2 0)
                                     (bb deb 1)
                                     ;(2 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(2 1)(1 1)(2 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(2 1)(1 1)(2 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(2 1)(1 1)(2 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(2 1)(1 1)(2 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(1 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(0 2)(1 1)(1 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(1 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(0 2)(1 1)(1 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(1 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(0 2)(1 1)(1 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(1 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(0 2)(1 1)(1 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(2 1)(1 1)(2 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(2 1)(1 1)(2 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(2 1)(1 1)(2 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(2 1)(1 1)(2 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(1 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(0 2)(1 1)(1 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(1 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(0 2)(1 1)(1 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(1 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(0 2)(1 1)(1 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(1 0)(2 0)(1 1)(2 0)

                                     ;(0 2)(0 2)(1 1)(1 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 2)(1 1)(1 1)

                                     ;(0 2)(0 2)(1 1)(2 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(1 0)(2 0)(1 1)(1 1)

                                     ;(0 2)(2 0)(1 1)(1 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 2)(1 1)(1 1)

                                     ;(0 2)(0 2)(1 1)(2 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(1 0)(2 0)(1 1)(1 1)

                                     ;(0 2)(2 0)(1 1)(2 1)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 0)(1 1)(0 2)

                                     ;(2 0)(2 1)(1 1)(2 0)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 0)(1 1)(0 2)

                                     ;(2 0)(2 0)(1 1)(2 0)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 0)(1 1)(0 2)

                                     ;(2 0)(2 0)(1 1)(2 0)
                                     (c m7 2) (bb 7 2) (ab maj7 2) (bb 7 2)
                                     ;(2 0)(2 2)(1 1)(0 2)

                                     ;(2 2)(1 1)(2 0)
                                     (c m7 2) (bb 7 2) (f rien 3)
                                     ) )
	MyRentPartyLong-MEM_beatdur (bpmtobeatdur 87))
	(setf clusters_centroids (list :Chroma (list  0.478 0.24162 0.67584 ) :TonalCentroid (list  -0.0034029 -0.57528 -0.70782 ) ))
(setf MyRentPartyLong-MEM_tune (make-instance (quote tune) :grid MyRentPartyLong-MEM_grid :beatduration MyRentPartyLong-MEM_beatdur :tunename "MyRentPartyLong-MEM" :NbBeatsPerMeasure 4 :DataFromAnalysis  (list  0.478 0.24162 0.67584 ) :chapters '(1 33)))
(setf (gethash (quote "MyRentPartyLong-MEM") *available-grids*) MyRentPartyLong-MEM_tune)


;Oleo
;--------------------------------------------------------------------------------------------------------------------
(setf Oleo_grid '(
                        ;A1
                        (bb maj7 2) (g m7 2) (c m7 2) (f 7 2) 
                        (bb maj7 2) (g 7 2) (c m7 2) (f 7 2)
                        (bb maj7 2) (bb 7 2) (eb maj7 4)
                        (d m7 2) (g m7 2) (c m7 2) (f 7 2)
                        ;A2
                        (bb maj7 2) (g m7 2) (c m7 2) (f 7 2) 
                        (bb maj7 2) (g 7 2) (c m7 2) (f 7 2)
                        (bb maj7 2) (bb 7 2) (eb maj7 4)
                        (d m7 2) (g m7 2) (c m7 1) (f 7 1) (bb maj7 2)
                        ;B
                        (d 7 8) (g 7 8) (c 7 8) (f 7 8)
                        ;C = A2
                        (bb maj7 2) (g m7 2) (c m7 2) (f 7 2) 
                        (bb maj7 2) (g 7 2) (c m7 2) (f 7 2)
                        (bb maj7 2) (bb 7 2) (eb maj7 4)
                        (d m7 2) (g m7 2) (c m7 1) (f 7 1) (bb maj7 2)
                        
)
                                                        
      Oleo_beatdur (bpmtobeatdur 224))   ;BPM=190, beatdur= 315 ms
(setf Oleo_tune (make-instance 'tune :grid Oleo_grid :beatduration Oleo_beatdur :tunename "Oleo"))
(setf (gethash '"Oleo" *available-grids*) Oleo_tune)

;MyOleo
;--------------------------------------------------------------------------------------------------------------------
(setf MyOleo_grid '(
                        ;B'
                        (d 7 4) (g 7 4) (c 7 4) (f 7 4)
                        ;A1
                        (bb maj7 2) (g m7 2) (c m7 2) (f 7 2) 
                        (bb maj7 2) (g 7 2) (c m7 2) (f 7 2)
                        (bb maj7 2) (bb 7 2) (eb maj7 4)
                        (d m7 2) (g m7 2) (c m7 2) (f 7 2)
                        ;A2
                        (bb maj7 2) (g m7 2) (c m7 2) (f 7 2) 
                        (bb maj7 2) (g 7 2) (c m7 2) (f 7 2)
                        (bb maj7 2) (bb 7 2) (eb maj7 4)
                        (d m7 2) (g m7 2) (c m7 1) (f 7 1) (bb maj7 2)
                        ;B
                        (d 7 8) (g 7 8) (c 7 8) (f 7 8)
                        ;C = A2
                        (bb maj7 2) (g m7 2) (c m7 2) (f 7 2) 
                        (bb maj7 2) (g 7 2) (c m7 2) (f 7 2)
                        (bb maj7 2) (bb 7 2) (eb maj7 4)
                        (d m7 2) (g m7 2) (c m7 1) (f 7 1) (bb maj7 2)
                        
)
                                                        
      MyOleo_beatdur (bpmtobeatdur 110))   ;BPM=190, beatdur= 315 ms
(setf MyOleo_tune (make-instance 'tune :grid MyOleo_grid :beatduration MyOleo_beatdur :tunename "MyOleo"))
(setf (gethash '"MyOleo" *available-grids*) MyOleo_tune)


; 07_Providence
;--------------------------------------------------------------------------------------------------------------------
(setf 07_Providence_grid '((g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7))

07_Providence_beatdur 500)
(setf 07_Providence_tune (make-instance 'tune :grid 07_Providence_grid :beatduration 07_Providence_beatdur :tunename "07_Providence"))
(setf (gethash '"07_Providence" *available-grids*) 07_Providence_tune)

; Radioactivity
;--------------------------------------------------------------------------------------------------------------------
(setf Radioactivity_grid '((a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (c maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7))

Radioactivity_beatdur 492)
(setf Radioactivity_tune (make-instance 'tune :grid Radioactivity_grid :beatduration Radioactivity_beatdur :tunename "Radioactivity"))
(setf (gethash '"Radioactivity" *available-grids*) Radioactivity_tune)

; 08_An-der-Lili
;--------------------------------------------------------------------------------------------------------------------
(setf 08_An-der-Lili_grid '((c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (d dim) (d dim) (d dim) (d dim) (d dim) (d dim) (d dim) (d dim))

08_An-der-Lili_beatdur 526)
(setf 08_An-der-Lili_tune (make-instance 'tune :grid 08_An-der-Lili_grid :beatduration 08_An-der-Lili_beatdur :tunename "08_An-der-Lili"))
(setf (gethash '"08_An-der-Lili" *available-grids*) 08_An-der-Lili_tune)


; 10_Waste-Land
;--------------------------------------------------------------------------------------------------------------------
(setf 10_Waste-Land_grid '((a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (g 7) (g 7) (g 7) (g 7) (g 7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (g 7) (g 7) (g 7) (g 7) (g 7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (g 7) (g 7) (g 7) (g 7) (g 7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (g 7) (g 7) (g 7) (g 7) (g 7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (g 7) (g 7) (g 7) (g 7) (g 7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (g 7) (g 7) (g 7) (g 7) (g 7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (g 7) (g 7) (g 7) (g 7) (g 7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (g 7) (g 7) (g 7) (g 7) (g 7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (g 7) (g 7) (g 7) (g 7) (g 7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (g 7) (g 7) (g 7) (g 7) (g 7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (g 7) (g 7) (g 7) (g 7) (g 7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (g 7) (g 7) (g 7) (g 7) (g 7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (g 7) (g 7) (g 7) (g 7) (g 7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (g 7) (g 7) (g 7) (g 7) (g 7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (g 7) (g 7) (g 7) (g 7) (g 7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (g 7) (g 7) (g 7) (g 7) (g 7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7))

10_Waste-Land_beatdur 434)
(setf 10_Waste-Land_tune (make-instance 'tune :grid 10_Waste-Land_grid :beatduration 10_Waste-Land_beatdur :tunename "10_Waste-Land"))
(setf (gethash '"10_Waste-Land" *available-grids*) 10_Waste-Land_tune)








; 07_Providence_short
;--------------------------------------------------------------------------------------------------------------------
(setf 07_Providence_short_grid '((g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (c 7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7))

07_Providence_short_beatdur 500)
(setf 07_Providence_short_tune (make-instance 'tune :grid 07_Providence_short_grid :beatduration 07_Providence_short_beatdur :tunename "07_Providence_short"))
(setf (gethash '"07_Providence_short" *available-grids*) 07_Providence_short_tune)



; Burger_Good
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_Good_grid '(
(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) 
(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) 
(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) 
(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) 

(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) 
(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) 
(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) 
(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) 

(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) 
(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) 
(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) 
(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) 

(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) 
(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) 
(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) 
(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) 

(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) 
(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) 
(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7))

Burger_Good_beatdur 857)
(setf Burger_Good_tune (make-instance 'tune :grid Burger_Good_grid :beatduration Burger_Good_beatdur :tunename "Burger_Good"))
(setf (gethash '"Burger_Good" *available-grids*) Burger_Good_tune)

; Burger_Good_old_1_Cycle
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_Good_old_1_Cycle_grid '(
(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) 
(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) 

(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) 
(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7))

Burger_Good_old_1_Cycle_beatdur 857)
(setf Burger_Good_old_1_Cycle_tune (make-instance 'tune :grid Burger_Good_old_1_Cycle_grid :beatduration Burger_Good_old_1_Cycle_beatdur :tunename "Burger_Good_old_1_Cycle"))
(setf (gethash '"Burger_Good_old_1_Cycle" *available-grids*) Burger_Good_old_1_Cycle_tune)


; Burger_Good_1_Cycle
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_Good_1_Cycle_grid '(

(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (f maj7) (f maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (f maj7) (f maj7) (d m7) (d m7) 
(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (f maj7) (f maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (f maj7) (f maj7) (d m7) (d m7)) 


Burger_Good_1_Cycle_beatdur 857)
(setf Burger_Good_1_Cycle_tune (make-instance 'tune :grid Burger_Good_1_Cycle_grid :beatduration Burger_Good_1_Cycle_beatdur :tunename "Burger_Good_1_Cycle"))
(setf (gethash '"Burger_Good_1_Cycle" *available-grids*) Burger_Good_1_Cycle_tune)


; Burger_Good_3_Cycle
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_Good_3_Cycle_grid '(

(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (f maj7) (f maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (f maj7) (f maj7) (d m7) (d m7) 
(bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (f maj7) (f maj7) 
(d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (f maj7) (f maj7) (d m7) (d m7)) 


Burger_Good_3_Cycle_beatdur 857)
(setf Burger_Good_3_Cycle_tune (make-instance 'tune :grid Burger_Good_3_Cycle_grid :beatduration Burger_Good_3_Cycle_beatdur :tunename "Burger_Good_3_Cycle"))
(setf (gethash '"Burger_Good_3_Cycle" *available-grids*) Burger_Good_3_Cycle_tune)



; Burger_Good_Keyb
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_Good_Keyb_grid '((bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7))

Burger_Good_Keyb_beatdur 857)
(setf Burger_Good_Keyb_tune (make-instance 'tune :grid Burger_Good_Keyb_grid :beatduration Burger_Good_Keyb_beatdur :tunename "Burger_Good_Keyb"))
(setf (gethash '"Burger_Good_Keyb" *available-grids*) Burger_Good_Keyb_tune)

; Burger_Good_Guitare
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_Good_Guitare_grid '((bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7) (d m7))

Burger_Good_Guitare_beatdur 857)
(setf Burger_Good_Guitare_tune (make-instance 'tune :grid Burger_Good_Guitare_grid :beatduration Burger_Good_Guitare_beatdur :tunename "Burger_Good_Guitare"))
(setf (gethash '"Burger_Good_Guitare" *available-grids*) Burger_Good_Guitare_tune)


; Burger_Mary_1_Cycle_old
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_Mary_1_Cycle_old_grid '((a m7 8) (e 7 4) (a m7 16) (e 7 4) (a m7 8) (d maj7 4) (e 7 4) (f# m7 4) (d maj7 4) (a m7 4) (e 7 4) (f# m7 4) (d maj7 4) (a m7 4) (e 7 4) (a m7 4) (d maj7 4) (a m7 4) (d maj7 4))

Burger_Mary_1_Cycle_old_beatdur 731)
(setf Burger_Mary_1_Cycle_old_tune (make-instance 'tune :grid Burger_Mary_1_Cycle_old_grid :beatduration Burger_Mary_1_Cycle_old_beatdur :tunename "Burger_Mary_1_Cycle_old"))
(setf (gethash '"Burger_Mary_1_Cycle_old" *available-grids*) Burger_Mary_1_Cycle_old_tune)

; Burger_Mary_1_Cycle
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_Mary_1_Cycle_grid '((a 7 8) (e 7 4) (a 7 16) (e 7 4) (a 7 8) (d maj7 4) (e 7 4) (f# m7 4) (d maj7 4) (a 7 4) (e 7 4) (f# m7 4) (d maj7 4) (a 7 4) (e 7 4) (a 7 4) (d maj7 4) (a 7 4) (d maj7 4))

Burger_Mary_1_Cycle_beatdur 731)
(setf Burger_Mary_1_Cycle_tune (make-instance 'tune :grid Burger_Mary_1_Cycle_grid :beatduration Burger_Mary_1_Cycle_beatdur :tunename "Burger_Mary_1_Cycle"))
(setf (gethash '"Burger_Mary_1_Cycle" *available-grids*) Burger_Mary_1_Cycle_tune)


; Burger_Lili
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_Lili_grid '(

(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7)

(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7)
 (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 

(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7)
 (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 

(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7)
 (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7)
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 

(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7))

Burger_Lili_beatdur 526)
(setf Burger_Lili_tune (make-instance 'tune :grid Burger_Lili_grid :beatduration Burger_Lili_beatdur :tunename "Burger_Lili"))
(setf (gethash '"Burger_Lili" *available-grids*) Burger_Lili_tune)



; Burger_Lili_1_Cycle
; 8 bars of c m7 (intro) missing
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_Lili_1_Cycle_grid '(

;(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7)

(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7)
 (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
)

Burger_Lili_1_Cycle_beatdur 526)
(setf Burger_Lili_1_Cycle_tune (make-instance 'tune :grid Burger_Lili_1_Cycle_grid :beatduration Burger_Lili_1_Cycle_beatdur :tunename "Burger_Lili_1_Cycle"))
(setf (gethash '"Burger_Lili_1_Cycle" *available-grids*) Burger_Lili_1_Cycle_tune)



; Burger_Lili_Guitare
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_Lili_Guitare_grid '((c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7))

Burger_Lili_Guitare_beatdur 526)
(setf Burger_Lili_Guitare_tune (make-instance 'tune :grid Burger_Lili_Guitare_grid :beatduration Burger_Lili_Guitare_beatdur :tunename "Burger_Lili_Guitare"))
(setf (gethash '"Burger_Lili_Guitare" *available-grids*) Burger_Lili_Guitare_tune)

; Burger_Lili_Keyb
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_Lili_Keyb_grid '((c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (f 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7))

Burger_Lili_Keyb_beatdur 526)
(setf Burger_Lili_Keyb_tune (make-instance 'tune :grid Burger_Lili_Keyb_grid :beatduration Burger_Lili_Keyb_beatdur :tunename "Burger_Lili_Keyb"))
(setf (gethash '"Burger_Lili_Keyb" *available-grids*) Burger_Lili_Keyb_tune)




; Burger_PainKiller
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_PainKiller_grid '(
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7)
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7)
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 

(f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) 
(f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7)
(f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) 
(f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) 

(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7)
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7)
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 

(f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) 
(f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) 
(f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) 
(f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) 
(f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) 
(f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) 

(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7))

Burger_PainKiller_beatdur 845)
(setf Burger_PainKiller_tune (make-instance 'tune :grid Burger_PainKiller_grid :beatduration Burger_PainKiller_beatdur :tunename "Burger_PainKiller"))
(setf (gethash '"Burger_PainKiller" *available-grids*) Burger_PainKiller_tune)


; Burger_PainKiller_Guit1
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_PainKiller_Guit1_grid '((c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7))

Burger_PainKiller_Guit1_beatdur 845)
(setf Burger_PainKiller_Guit1_tune (make-instance 'tune :grid Burger_PainKiller_Guit1_grid :beatduration Burger_PainKiller_Guit1_beatdur :tunename "Burger_PainKiller_Guit1"))
(setf (gethash '"Burger_PainKiller_Guit1" *available-grids*) Burger_PainKiller_Guit1_tune)

; Burger_PainKiller_Guit2
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_PainKiller_Guit2_grid '((c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7))

Burger_PainKiller_Guit2_beatdur 845)
(setf Burger_PainKiller_Guit2_tune (make-instance 'tune :grid Burger_PainKiller_Guit2_grid :beatduration Burger_PainKiller_Guit2_beatdur :tunename "Burger_PainKiller_Guit2"))
(setf (gethash '"Burger_PainKiller_Guit2" *available-grids*) Burger_PainKiller_Guit2_tune)

; Burger_PainKiller_Keyb
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_PainKiller_Keyb_grid '((c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (f m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7))

Burger_PainKiller_Keyb_beatdur 845)
(setf Burger_PainKiller_Keyb_tune (make-instance 'tune :grid Burger_PainKiller_Keyb_grid :beatduration Burger_PainKiller_Keyb_beatdur :tunename "Burger_PainKiller_Keyb"))
(setf (gethash '"Burger_PainKiller_Keyb" *available-grids*) Burger_PainKiller_Keyb_tune)

; Burger_FXofLove
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_FXofLove_grid '(
(f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) 

(f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) 
(eb m7) (eb m7) (eb m7) (eb m7) 
(f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) 
(eb m7) (eb m7) (eb m7) (eb m7) 
(f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) 
(eb m7) (eb m7) (eb m7) (eb m7) 
(f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) 
(eb m7) (eb m7) (eb m7) (eb m7) 
(f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) 
(bb m7) (bb m7) (bb m7) (bb m7) 
(f 7b9) (f 7b9) (f 7b9) (f 7b9) 
(eb m7) (eb m7) (eb m7) (eb m7) 
(f 7b9) (f 7b9) (f 7b9) (f 7b9) 
(bb m7) (bb m7) (bb m7) (bb m7) 
(f 7b9) (f 7b9) (f 7b9) (f 7b9) 
(eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) 

(f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) 
(eb m7) (eb m7) (eb m7) (eb m7) 
(f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) 
(eb m7) (eb m7) (eb m7) (eb m7) 
(f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) 
(eb m7) (eb m7) (eb m7) (eb m7) 
(f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) 
(eb m7) (eb m7) (eb m7) (eb m7) 
(f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9)
(eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) 
(f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) 
(eb m7) (eb m7) (eb m7) (eb m7) 
(f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) 
(bb m7) (bb m7) (bb m7) (bb m7) 
(f 7b9) (f 7b9) (f 7b9) (f 7b9) 
(eb m7) (eb m7) (eb m7) (eb m7) 
(f 7b9) (f 7b9) (f 7b9) (f 7b9) 
(bb m7) (bb m7) (bb m7) (bb m7) 
(f 7b9) (f 7b9) (f 7b9) (f 7b9) 
(eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) 
(f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) 
(bb m7) (bb m7) (bb m7) (bb m7) 
(f 7b9) (f 7b9) (f 7b9) (f 7b9) 
(eb m7) (eb m7) (eb m7) (eb m7) 
(f 7b9) (f 7b9) (f 7b9) (f 7b9) 
(bb m7) (bb m7) (bb m7) (bb m7) 
(f 7b9) (f 7b9) (f 7b9) (f 7b9) 
(eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) 
(f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9))

Burger_FXofLove_beatdur 697)
(setf Burger_FXofLove_tune (make-instance 'tune :grid Burger_FXofLove_grid :beatduration Burger_FXofLove_beatdur :tunename "Burger_FXofLove"))
(setf (gethash '"Burger_FXofLove" *available-grids*) Burger_FXofLove_tune)

; Burger_FXofLove_Guit1
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_FXofLove_Guit1_grid '((f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (bb m7) (bb m7) (bb m7) (bb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (bb m7) (bb m7) (bb m7) (bb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (bb m7) (bb m7) (bb m7) (bb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (bb m7) (bb m7) (bb m7) (bb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (bb m7) (bb m7) (bb m7) (bb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (bb m7) (bb m7) (bb m7) (bb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9))

Burger_FXofLove_Guit1_beatdur 697)
(setf Burger_FXofLove_Guit1_tune (make-instance 'tune :grid Burger_FXofLove_Guit1_grid :beatduration Burger_FXofLove_Guit1_beatdur :tunename "Burger_FXofLove_Guit1"))
(setf (gethash '"Burger_FXofLove_Guit1" *available-grids*) Burger_FXofLove_Guit1_tune)

; Burger_FXofLove_Guit2
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_FXofLove_Guit2_grid '((f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (bb m7) (bb m7) (bb m7) (bb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (bb m7) (bb m7) (bb m7) (bb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (bb m7) (bb m7) (bb m7) (bb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (bb m7) (bb m7) (bb m7) (bb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (bb m7) (bb m7) (bb m7) (bb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (bb m7) (bb m7) (bb m7) (bb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (eb m7) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9) (f 7b9))

Burger_FXofLove_Guit2_beatdur 697)
(setf Burger_FXofLove_Guit2_tune (make-instance 'tune :grid Burger_FXofLove_Guit2_grid :beatduration Burger_FXofLove_Guit2_beatdur :tunename "Burger_FXofLove_Guit2"))
(setf (gethash '"Burger_FXofLove_Guit2" *available-grids*) Burger_FXofLove_Guit2_tune)

; Burger_Lenz
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_Lenz_grid '(
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 

(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7)
 
(f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) 
(f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) 
(f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) 
(f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) 

(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 

(f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) 
(f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) 
(f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) 
(f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) 

(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) 

(f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) 
(f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) 
(f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) 
(f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7))

Burger_Lenz_beatdur 428)
(setf Burger_Lenz_tune (make-instance 'tune :grid Burger_Lenz_grid :beatduration Burger_Lenz_beatdur :tunename "Burger_Lenz"))
(setf (gethash '"Burger_Lenz" *available-grids*) Burger_Lenz_tune)

; Burger_Lenz_Guit
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_Lenz_Guit_grid '((a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7))

Burger_Lenz_Guit_beatdur 428)
(setf Burger_Lenz_Guit_tune (make-instance 'tune :grid Burger_Lenz_Guit_grid :beatduration Burger_Lenz_Guit_beatdur :tunename "Burger_Lenz_Guit"))
(setf (gethash '"Burger_Lenz_Guit" *available-grids*) Burger_Lenz_Guit_tune)


; Burger_Lenz_Keyb
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_Lenz_Keyb_grid '((a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7) (f maj7))

Burger_Lenz_Keyb_beatdur 428)
(setf Burger_Lenz_Keyb_tune (make-instance 'tune :grid Burger_Lenz_Keyb_grid :beatduration Burger_Lenz_Keyb_beatdur :tunename "Burger_Lenz_Keyb"))
(setf (gethash '"Burger_Lenz_Keyb" *available-grids*) Burger_Lenz_Keyb_tune)


; Burger_LadyOfGuadalupe
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_LadyOfGuadalupe_grid '(

(a m7) (a m7) (a m7) (a m7) 
(f 7) (f 7) (f 7) (f 7) 
(d 7) (d 7) (d 7) (d 7) 
(f 7) (f 7) (f 7) (f 7) 

(a m7) (a m7) (a m7) (a m7) 
(f 7) (f 7) (f 7) (f 7) 
(d 7) (d 7) (d 7) (d 7) 
(f 7) (f 7) (f 7) (f 7) 

(a m7) (a m7) (a m7) (a m7) 
(f 7) (f 7) (f 7) (f 7) 
(d 7) (d 7) (d 7) (d 7) 
(f 7) (f 7) (f 7) (f 7) 

(a m7) (a m7) (a m7) (a m7) 
(f 7) (f 7) (f 7) (f 7) 
(d 7) (d 7) (d 7) (d 7) 
(f 7) (f 7) (f 7) (f 7) 

(a m7) (a m7) (a m7) (a m7) 
(f 7) (f 7) (f 7) (f 7) 
(d 7) (d 7) (d 7) (d 7) 
(f 7) (f 7) (f 7) (f 7) 

(eb maj7) (eb maj7) (eb maj7) (eb maj7) 
(d 7) (d 7) (d 7) (d 7) 
(a m7) (a m7) (a m7) (a m7) 
(d 7) (d 7) (d 7) (d 7) 
(e 7) (e 7) (e 7) (e 7) 
(d 7) (d 7) (d 7) (d 7) 
(a m7) (a m7) (a m7) (a m7) 
(d 7) (d 7) (d 7) (d 7) 

(a m7) (a m7) (a m7) (a m7) 
(f 7) (f 7) (f 7) (f 7) 
(d 7) (d 7) (d 7) (d 7) 
(f 7) (f 7) (f 7) (f 7) 

(a m7) (a m7) (a m7) (a m7) 
(f 7) (f 7) (f 7) (f 7) 
(d 7) (d 7) (d 7) (d 7) 
(f 7) (f 7) (f 7) (f 7) 

(a m7) (a m7) (a m7) (a m7) 
(f 7) (f 7) (f 7) (f 7) 
(d 7) (d 7) (d 7) (d 7) 
(f 7) (f 7) (f 7) (f 7) 

(eb maj7) (eb maj7) (eb maj7) (eb maj7) 
(d 7) (d 7) (d 7) (d 7) 
(a m7) (a m7) (a m7) (a m7) 
(d 7) (d 7) (d 7) (d 7) 
(e 7) (e 7) (e 7) (e 7) 
(d 7) (d 7) (d 7) (d 7) 

(a m7) (a m7) (a m7) (a m7) 
(d 7) (d 7) (d 7) (d 7) 
(e 7) (e 7) (e 7) (e 7) 
(d 7) (d 7) (d 7) (d 7) 
(a m7) (a m7) (a m7) (a m7) 
(d 7) (d 7) (d 7) (d 7) 

(a m7) (a m7) (a m7) (a m7) 
(d m7) (d m7) (d m7) (d m7) 
(a m7) (a m7) (a m7) (a m7) 
(d m7) (d m7) (d m7) (d m7) 
(a m7) (a m7) (a m7) (a m7) 
(d m7) (d m7) (d m7) (d m7) 
(a m7) (a m7) (a m7) (a m7) 
(d m7) (d m7) (d m7) (d m7) 

(bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(c 7) (c 7) (c 7) (c 7) 
(a m7) (a m7) (a m7) (a m7) 
(bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(c 7) (c 7) (c 7) (c 7) 
(a m7) (a m7) (a m7) (a m7) 
(d m7) (d m7) (d m7) (d m7) 

(a m7) (a m7) (a m7) (a m7) 
(f 7) (f 7) (f 7) (f 7) 
(d 7) (d 7) (d 7) (d 7) 
(f 7) (f 7) (f 7) (f 7) 

(a m7) (a m7) (a m7) (a m7) 
(f 7) (f 7) (f 7) (f 7) 
(d 7) (d 7) (d 7) (d 7) 
(f 7) (f 7) (f 7) (f 7) 

(a m7) (a m7) (a m7) (a m7) 
(f 7) (f 7) (f 7) (f 7) 
(d 7) (d 7) (d 7) (d 7) 
(f 7) (f 7) (f 7) (f 7) 

(eb maj7) (eb maj7) (eb maj7) (eb maj7) 
(d 7) (d 7) (d 7) (d 7) 
(a m7) (a m7) (a m7) (a m7) 
(d 7) (d 7) (d 7) (d 7) 
(e 7) (e 7) (e 7) (e 7) 
(d 7) (d 7) (d 7) (d 7) 
(a m7) (a m7) (a m7) (a m7) 
(d 7) (d 7) (d 7) (d 7) 
(e 7) (e 7) (e 7) (e 7) 
(d 7) (d 7) (d 7) (d 7) 
(a m7) (a m7) (a m7) (a m7) 
(d 7) (d 7) (d 7) (d 7) 

(a m7) (a m7) (a m7) (a m7) 
(d m7) (d m7) (d m7) (d m7) 
(a m7) (a m7) (a m7) (a m7) 
(d m7) (d m7) (d m7) (d m7) 
(a m7) (a m7) (a m7) (a m7) 
(d m7) (d m7) (d m7) (d m7) 
(a m7) (a m7) (a m7) (a m7) 
(d m7) (d m7) (d m7) (d m7) 

(bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(c 7) (c 7) (c 7) (c 7) 
(a m7) (a m7) (a m7) (a m7) 
(bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(c 7) (c 7) (c 7) (c 7) 
(a m7) (a m7) (a m7) (a m7) 
(bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(c 7) (c 7) (c 7) (c 7) 
(a m7) (a m7) (a m7) (a m7) 
(bb maj7) (bb maj7) (bb maj7) (bb maj7) 
(c 7) (c 7) (c 7) (c 7) 
(a m7) (a m7) (a m7) (a m7) 

(d m7) (d m7) (d m7) (d m7) 
(a m7) (a m7) (a m7) (a m7) 
(f 7) (f 7) (f 7) (f 7) 
(d 7) (d 7) (d 7) (d 7) 
(f 7) (f 7) (f 7) (f 7) 
(a m7) (a m7) (a m7) (a m7) 
(f 7) (f 7) (f 7) (f 7) 
(d 7) (d 7) (d 7) (d 7) 
(f 7) (f 7) (f 7) (f 7) 
(a m7) (a m7) (a m7) (a m7) 
(a m7) (a m7) (a m7) (a m7))

Burger_LadyOfGuadalupe_beatdur 588)
(setf Burger_LadyOfGuadalupe_tune (make-instance 'tune :grid Burger_LadyOfGuadalupe_grid :beatduration Burger_LadyOfGuadalupe_beatdur :tunename "Burger_LadyOfGuadalupe"))
(setf (gethash '"Burger_LadyOfGuadalupe" *available-grids*) Burger_LadyOfGuadalupe_tune)


; Burger_LadyOfGuadalupe_Guit1
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_LadyOfGuadalupe_Guit1_grid '((a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (e 7) (e 7) (e 7) (e 7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (e 7) (e 7) (e 7) (e 7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (e 7) (e 7) (e 7) (e 7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (a m7) (a m7) (a m7) (a m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (e 7) (e 7) (e 7) (e 7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (e 7) (e 7) (e 7) (e 7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (a m7) (a m7) (a m7) (a m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (a m7) (a m7) (a m7) (a m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (a m7) (a m7) (a m7) (a m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7))

Burger_LadyOfGuadalupe_Guit1_beatdur 588)
(setf Burger_LadyOfGuadalupe_Guit1_tune (make-instance 'tune :grid Burger_LadyOfGuadalupe_Guit1_grid :beatduration Burger_LadyOfGuadalupe_Guit1_beatdur :tunename "Burger_LadyOfGuadalupe_Guit1"))
(setf (gethash '"Burger_LadyOfGuadalupe_Guit1" *available-grids*) Burger_LadyOfGuadalupe_Guit1_tune)

; Burger_LadyOfGuadalupe_Guit2
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_LadyOfGuadalupe_Guit2_grid '((a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (e 7) (e 7) (e 7) (e 7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (e 7) (e 7) (e 7) (e 7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (e 7) (e 7) (e 7) (e 7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (a m7) (a m7) (a m7) (a m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (e 7) (e 7) (e 7) (e 7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (e 7) (e 7) (e 7) (e 7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (a m7) (a m7) (a m7) (a m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (a m7) (a m7) (a m7) (a m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (a m7) (a m7) (a m7) (a m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7))

Burger_LadyOfGuadalupe_Guit2_beatdur 588)
(setf Burger_LadyOfGuadalupe_Guit2_tune (make-instance 'tune :grid Burger_LadyOfGuadalupe_Guit2_grid :beatduration Burger_LadyOfGuadalupe_Guit2_beatdur :tunename "Burger_LadyOfGuadalupe_Guit2"))
(setf (gethash '"Burger_LadyOfGuadalupe_Guit2" *available-grids*) Burger_LadyOfGuadalupe_Guit2_tune)

; Burger_LadyOfGuadalupe_GuitAcc
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_LadyOfGuadalupe_GuitAcc_grid '((a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (e 7) (e 7) (e 7) (e 7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (e 7) (e 7) (e 7) (e 7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (e 7) (e 7) (e 7) (e 7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (a m7) (a m7) (a m7) (a m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (e 7) (e 7) (e 7) (e 7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (e 7) (e 7) (e 7) (e 7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (a m7) (a m7) (a m7) (a m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (a m7) (a m7) (a m7) (a m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (a m7) (a m7) (a m7) (a m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7))

Burger_LadyOfGuadalupe_GuitAcc_beatdur 588)
(setf Burger_LadyOfGuadalupe_GuitAcc_tune (make-instance 'tune :grid Burger_LadyOfGuadalupe_GuitAcc_grid :beatduration Burger_LadyOfGuadalupe_GuitAcc_beatdur :tunename "Burger_LadyOfGuadalupe_GuitAcc"))
(setf (gethash '"Burger_LadyOfGuadalupe_GuitAcc" *available-grids*) Burger_LadyOfGuadalupe_GuitAcc_tune)


; Burger_LadyOfGuadalupe_Piano
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_LadyOfGuadalupe_Piano_grid '((a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (e 7) (e 7) (e 7) (e 7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (e 7) (e 7) (e 7) (e 7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (e 7) (e 7) (e 7) (e 7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (a m7) (a m7) (a m7) (a m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (e 7) (e 7) (e 7) (e 7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (e 7) (e 7) (e 7) (e 7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d 7) (d 7) (d 7) (d 7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (a m7) (a m7) (a m7) (a m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (a m7) (a m7) (a m7) (a m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (a m7) (a m7) (a m7) (a m7) (bb maj7) (bb maj7) (bb maj7) (bb maj7) (c 7) (c 7) (c 7) (c 7) (a m7) (a m7) (a m7) (a m7) (d m7) (d m7) (d m7) (d m7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (f 7) (f 7) (f 7) (f 7) (d 7) (d 7) (d 7) (d 7) (f 7) (f 7) (f 7) (f 7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7) (a m7))

Burger_LadyOfGuadalupe_Piano_beatdur 588)
(setf Burger_LadyOfGuadalupe_Piano_tune (make-instance 'tune :grid Burger_LadyOfGuadalupe_Piano_grid :beatduration Burger_LadyOfGuadalupe_Piano_beatdur :tunename "Burger_LadyOfGuadalupe_Piano"))
(setf (gethash '"Burger_LadyOfGuadalupe_Piano" *available-grids*) Burger_LadyOfGuadalupe_Piano_tune)


; Burger_Magic_Avec_Intro
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_Magic_Avec_Intro_grid '(
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 

(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) 
(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) 

(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) 
(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) 

(eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) 
(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) 

(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) 
(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) 

(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) 
(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) 

(eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) 
(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) 

(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) 
(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) 

(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) 
(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) 

(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) 
(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) 

(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) 
(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) 
(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) 
(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7))

Burger_Magic_Avec_Intro_beatdur 550)
(setf Burger_Magic_Avec_Intro_tune (make-instance 'tune :grid Burger_Magic_Avec_Intro_grid :beatduration Burger_Magic_Avec_Intro_beatdur :tunename "Burger_Magic_Avec_Intro"))
(setf (gethash '"Burger_Magic_Avec_Intro" *available-grids*) Burger_Magic_Avec_Intro_tune)









; Burger_Magic
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_Magic_grid '(
;(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
;(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
;(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
;(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
;(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 

(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) 
(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) 

(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) 
(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) 

(eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) 
(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) 

(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) 
(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) 

(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) 
(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) 

(eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) 
(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) 

(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) 
(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) 

(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) 
(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) 

(c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) 
(g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) 
(bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) 
(ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) 
(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) 

(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) 
(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) 
(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) 
(g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7))

Burger_Magic_beatdur 550)
(setf Burger_Magic_tune (make-instance 'tune :grid Burger_Magic_grid :beatduration Burger_Magic_beatdur :tunename "Burger_Magic"))
(setf (gethash '"Burger_Magic" *available-grids*) Burger_Magic_tune)


; Burger_Magic_eBow
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_Magic_eBow_grid '((c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7))

Burger_Magic_eBow_beatdur 550)
(setf Burger_Magic_eBow_tune (make-instance 'tune :grid Burger_Magic_eBow_grid :beatduration Burger_Magic_eBow_beatdur :tunename "Burger_Magic_eBow"))
(setf (gethash '"Burger_Magic_eBow" *available-grids*) Burger_Magic_eBow_tune)

; Burger_Magic_Keyb_Strings
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_Magic_Keyb_Strings_grid '((c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7))

Burger_Magic_Keyb_Strings_beatdur 550)
(setf Burger_Magic_Keyb_Strings_tune (make-instance 'tune :grid Burger_Magic_Keyb_Strings_grid :beatduration Burger_Magic_Keyb_Strings_beatdur :tunename "Burger_Magic_Keyb_Strings"))
(setf (gethash '"Burger_Magic_Keyb_Strings" *available-grids*) Burger_Magic_Keyb_Strings_tune)

; Burger_Magic_Piano
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_Magic_Piano_grid '((c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (g m7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7))

Burger_Magic_Piano_beatdur 550)
(setf Burger_Magic_Piano_tune (make-instance 'tune :grid Burger_Magic_Piano_grid :beatduration Burger_Magic_Piano_beatdur :tunename "Burger_Magic_Piano"))
(setf (gethash '"Burger_Magic_Piano" *available-grids*) Burger_Magic_Piano_tune)

; Burger_Magic_GuitFausse
;--------------------------------------------------------------------------------------------------------------------
(setf Burger_Magic_GuitFausse_grid '((c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (eb maj7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (c m7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (bb 7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (ab maj7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7) (g 7))

Burger_Magic_GuitFausse_beatdur 550)
(setf Burger_Magic_GuitFausse_tune (make-instance 'tune :grid Burger_Magic_GuitFausse_grid :beatduration Burger_Magic_GuitFausse_beatdur :tunename "Burger_Magic_GuitFausse"))
(setf (gethash '"Burger_Magic_GuitFausse" *available-grids*) Burger_Magic_GuitFausse_tune)







