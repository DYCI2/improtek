; January 2017
; Examples of scenario defined by Marta Gentilucci on the following alphabet



#|
a Tenuto

b Ribattuto long / c Ribattuto short
z Ribattuto disto long / y Ribattuto disto short

d Agilità long / e Agilità short
f silence

x Articulated vowels long / w Articulated vowels short

v Glottis' staccato

u Grumble disto low long / v Grumble disto low short
q Grumble disto med long / p Grumble disto med short
s Grumble disto high long / r Grumble disto high short

o Distortion long / n Distortion short
|#


(in-package :om)
(format *om-stream* "loading Scenarios-Voice~%")

;====================
; ORIGINAL MEMORIES
;====================

;AK_Phrases_ribattuti, no pulse, "BPM"=17
;--------------------------------------------------------------------------------------------------------------------

(setf AK_Phrases_ribattuti_grid
      '((c b 1) (c e 1) (c e 1) (c a 1) (c e 1) (c a 1) (c e 1) (c e 1) (c e 1) (c e 1) (c a 1) (c b 1) (c e 1) (c a 1) (c e 1) (c e 1) (c e 1) (c e 1) (c a 1) (c e 1) (c e 1) (c e 1) (c a 1) (c a 1) (c e 1) (c e 1) (c a 1) (c e 1) (c e 1) (c e 1) (c e 1) (c e 1) (c f 1) (c a 1) (c e 1) (c e 1) (c e 1) (c e 1) (c a 1) (c b 1) (c e 1) (c e 1) (c a 1) (c e 1) (c e 1) (c e 1) (c d 1) (c f 1) (c a 1) (c a 1) (c e 1) (c e 1) (c e 1) (c f 1) (c a 1) (c a 1) (c e 1) (c e 1) (c e 1) (c d 1) (c f 1) (c d 1) (c e 1) (c d 1) (c b 1) (c f 1) (c b 1) (c b 1) (c e 1) (c a 1) (c e 1) (c b 1) (c b 1) (c b 1) (c b 1) (c b 1) (c b 1) (c b 1) (c b 1) (c b 1) (c b 1) (c c 1) (c c 1) (c c 1))

       AK_Phrases_ribattuti_beatdur (bpmtobeatdur 17))
(setf AK_Phrases_ribattuti_tune (make-instance 'tune :grid AK_Phrases_ribattuti_grid :beatduration 
AK_Phrases_ribattuti_beatdur :tunename "AK_Phrases_ribattuti" :NbBeatsPerMeasure 1))
(setf (gethash '"AK_Phrases_ribattuti" *available-grids*) AK_Phrases_ribattuti_tune)

(setf AK_Phrases_ribattuti-NCN_tune AK_Phrases_ribattuti_tune)
(setf (gethash '"AK_Phrases_ribattuti-NCN" *available-grids*) AK_Phrases_ribattuti-NCN_tune)



;MP_impro-mix, no pulse, "BPM"=14
;--------------------------------------------------------------------------------------------------------------------

(setf MP_impro-mix_grid
      '((c z 1) (c z 1) (c y 1) (c u 1) (c q 1) (c q 1) (c q 1) (c p 1) (c q 1) (c x 1) (c w 1) (c w 1) (c w 1) (c a 1) (c x 1) (c a 1) (c x 1) (c w 1) (c o 1) (c y 1) (c z 1) (c z 1) (c y 1) (c z 1) (c z 1) (c w 1) (c w 1) (c w 1) (c w 1) (c w 1) (c w 1) (c w 1) (c w 1) (c w 1) (c w 1) (c w 1) (c w 1) (c z 1) (c z 1) (c z 1) (c z 1) (c z 1) (c z 1) (c z 1) (c w 1) (c w 1) (c w 1) (c w 1) (c z 1) (c o 1) (c o 1) (c o 1) (c n 1) (c n 1) (c n 1) (c n 1) (c n 1) (c n 1) (c n 1) (c o 1) (c t 1) (c t 1) (c u 1) (c t 1) (c t 1) (c t 1) (c t 1) (c t 1) (c t 1) (c t 1) (c t 1) (c t 1) (c t 1) (c t 1) (c t 1) (c t 1) (c t 1) (c u 1) (c u 1) (c t 1) (c t 1) (c u 1) (c u 1) (c t 1) (c t 1) (c t 1) (c t 1) (c t 1) (c t 1) (c t 1) (c t 1) (c t 1) (c u 1) (c t 1) (c t 1) (c t 1) (c v 1) (c t 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c v 1) (c u 1) (c u 1) (c u 1) (c t 1) (c u 1) (c u 1) (c s 1) (c r 1) (c r 1) (c t 1) (c t 1) (c t 1) (c r 1) (c r 1) (c s 1) (c s 1) (c s 1) (c o 1) (c r 1) (c r 1) (c r 1) (c r 1) (c s 1) (c u 1) (c r 1) (c s 1))

       MP_impro-mix_beatdur (bpmtobeatdur 14))
(setf MP_impro-mix_tune (make-instance 'tune :grid MP_impro-mix_grid :beatduration 
MP_impro-mix_beatdur :tunename "MP_impro-mix" :NbBeatsPerMeasure 1))
(setf (gethash '"MP_impro-mix" *available-grids*) MP_impro-mix_tune)


(setf MP_impro-mix-NCN_tune MP_impro-mix_tune)
(setf (gethash '"MP_impro-mix-NCN" *available-grids*) MP_impro-mix-NCN_tune)



;====================
; SCENARIOS
;====================


;AK_Scenario-1, no pulse, "BPM"=17
;--------------------------------------------------------------------------------------------------------------------

(setf AK_Scenario-1_grid
      '( (c a 3) (c e 4) (c a 3) (c b 2) )

       AK_Scenario-1_beatdur (bpmtobeatdur 17))
(setf AK_Scenario-1_tune (make-instance 'tune :grid AK_Scenario-1_grid :beatduration 
AK_Scenario-1_beatdur :tunename "AK_Scenario-1" :NbBeatsPerMeasure 1))
(setf (gethash '"AK_Scenario-1" *available-grids*) AK_Scenario-1_tune)

;AK_Scenario-2, no pulse, "BPM"=17
;--------------------------------------------------------------------------------------------------------------------

(setf AK_Scenario-2_grid
      '( (c a 1) (c e 8) (c a 1) (c f 1) (c a 1) (c e 9) (c a 3) (c b 3))

       AK_Scenario-2_beatdur (bpmtobeatdur 17))
(setf AK_Scenario-2_tune (make-instance 'tune :grid AK_Scenario-2_grid :beatduration 
AK_Scenario-2_beatdur :tunename "AK_Scenario-2" :NbBeatsPerMeasure 1))
(setf (gethash '"AK_Scenario-2" *available-grids*) AK_Scenario-2_tune)

;AK_Scenario-3, no pulse, "BPM"=17
;--------------------------------------------------------------------------------------------------------------------

(setf AK_Scenario-3_grid
      '( (c a 1) (c f 1) (c e 1) (c f 1) (c e 1) (c f 2) (c e 3) (c f 2) (c a 1) (c b 2) (c f 1) (c b 2) (c a 1) (c e 2) (c f 1) (c e 3) (c a 1))

       AK_Scenario-3_beatdur (bpmtobeatdur 17))
(setf AK_Scenario-3_tune (make-instance 'tune :grid AK_Scenario-3_grid :beatduration 
AK_Scenario-3_beatdur :tunename "AK_Scenario-3" :NbBeatsPerMeasure 1))
(setf (gethash '"AK_Scenario-3" *available-grids*) AK_Scenario-3_tune)



;AK_Scenario-test, no pulse, "BPM"=17
;--------------------------------------------------------------------------------------------------------------------

(setf AK_Scenario-test_grid
      '( (c d 4) (c b 4))

       AK_Scenario-test_beatdur (bpmtobeatdur 17))
(setf AK_Scenario-test_tune (make-instance 'tune :grid AK_Scenario-test_grid :beatduration 
AK_Scenario-1_beatdur :tunename "AK_Scenario-test" :NbBeatsPerMeasure 1))
(setf (gethash '"AK_Scenario-test" *available-grids*) AK_Scenario-test_tune)



;MP_Scenario-1, no pulse, "BPM"=14
;--------------------------------------------------------------------------------------------------------------------

(setf MP_Scenario-1_grid
      '( (c r 5) (c s 1) (c r 5) (c s 2) (c u 1) (c r 3) (c u 2) (c t 4) (c u 1) (c v 7) (c t 3) (c u 1) (c v 9) )

       MP_Scenario-1_beatdur (bpmtobeatdur 14))
(setf MP_Scenario-1_tune (make-instance 'tune :grid MP_Scenario-1_grid :beatduration 
MP_Scenario-1_beatdur :tunename "MP_Scenario-1" :NbBeatsPerMeasure 1))
(setf (gethash '"MP_Scenario-1" *available-grids*) MP_Scenario-1_tune)


;MP_Scenario-2, no pulse, "BPM"=14
;--------------------------------------------------------------------------------------------------------------------

(setf MP_Scenario-2_grid
      '( (c a 1) (c x 1) (c w 1) (c x 2) (c w 1) (c x 2) (c o 1) (c w 2) (c o 2) (c n 4) (c t 5) (c v 6))

       MP_Scenario-2_beatdur (bpmtobeatdur 14))
(setf MP_Scenario-2_tune (make-instance 'tune :grid MP_Scenario-2_grid :beatduration 
MP_Scenario-2_beatdur :tunename "MP_Scenario-2" :NbBeatsPerMeasure 1))
(setf (gethash '"MP_Scenario-2" *available-grids*) MP_Scenario-2_tune)


;MP_Scenario-3, no pulse, "BPM"=14
;--------------------------------------------------------------------------------------------------------------------

(setf MP_Scenario-3_grid
      '( (c o 3) (c w 2) (c z 1) (c y 2) (c z 1) (c w 2) (c y 2) (c z 2) (c w 2) (c u 1) (c t 5) (c u 1) (c t 5) )

       MP_Scenario-3_beatdur (bpmtobeatdur 14))
(setf MP_Scenario-3_tune (make-instance 'tune :grid MP_Scenario-3_grid :beatduration 
MP_Scenario-3_beatdur :tunename "MP_Scenario-3" :NbBeatsPerMeasure 1))
(setf (gethash '"MP_Scenario-3" *available-grids*) MP_Scenario-3_tune)

