; April 2016
; Examples of text scenarios

(in-package :om)
(format *om-stream* "loading Scenarios-Text~%")

;kaddish, BPM=80
;--------------------------------------------------------------------------------------------------------------------
; the rhythm the rhythm and your memory in my head three years after

(setf kaddish_grid
      '( (c the 1) (c rhythm 2) (c the 1) (c rhythm 2) (c and 1) (c your 1) (c memory 
3) (c in 1) (c my 1) (c head 1) (c three 1) (c years 1) (c after 2))

       kaddish_beatdur (bpmtobeatdur 80))
(setf kaddish_tune (make-instance 'tune :grid kaddish_grid :beatduration 
kaddish_beatdur :tunename "kaddish" :NbBeatsPerMeasure 1))
(setf (gethash '"kaddish" *available-grids*) kaddish_tune)


;objetsperdus, BPM=80
;--------------------------------------------------------------------------------------------------------------------
; walter benjamin, sens unique (ed payot),  page 141

(setf objetsperdus_grid
      '( 

(c ce 1) (c qui 1) (c rend 1) (c si 1) (c incomparable 5) (c et 1) (c si 1) (c definitif 4) (c le 1) (c tout 1) (c premier 2) (c apercu 3) (c dun 1) (c ville 2) (age 1) 
(c dun 2) (c ville 2) (c dans 1) (c le 1) (c paysage 4) (c cest 1) (c quen 1) (c lui 1) (c le 1) (c lointain 2) (c vibre 2) (c en 1) (c forte 2) (c osmose 3) (c avec 2) (c le 1) (c proche 2) 
(c lhabitude 4) (c na 1) (c pas 1) (c encore 3) (c fait 1) (c son 1) (c oeuvre 2) 
(c nous 1) (c commencons 3) (c tout 1) (c juste 1) (c a 1) (c nous 1) (c y 1) (c retrouver 3) (c et 1) (c le 1) (c paysage 3) (c dun 1) (c coup 1) (c disparait 3) (c comme 2) (c le 1) (c facade 3) (c dun 2) (c maison 2) (c lorsque 2) (c nous 1) (c y 1) (c entrons 2) 
(c celui 2) (c ci 1) (c na 1) (c pas 1) (c encore 3) (c lhegemonie 4) (c que 1) (c donne 2) (c un 2) (c exploration 4) (c continue 3) (c devenue 3) (c habitude 4)
(c nous 2) (c cest 2) (c mis 1) (c un 1) (c jour 1) (c a 1) (c nous 1) (c acoutumer 4) (c a 1) (c un 1) (c lieu 2) (c et 1) (c ce 2) (c tout 2) (c premiere 3) (c image 3) (c na 1) (c pu 1) (c cest 2) (c retrouvee 3)

)

       objetsperdus_beatdur (bpmtobeatdur 80))
(setf objetsperdus_tune (make-instance 'tune :grid objetsperdus_grid :beatduration 
objetsperdus_beatdur :tunename "objetsperdus" :NbBeatsPerMeasure 1))
(setf (gethash '"objetsperdus" *available-grids*) objetsperdus_tune)

#|
;objetsperdus, BPM=80
;--------------------------------------------------------------------------------------------------------------------
; walter benjamin, sens unique (ed payot),  page 141

(setf objetsperdus_grid
      '( 

(c ce 1) (c qui 1) (c rend 1) (c si 1) (c incomparable 5) (c et 1) (c si 1) (c definitif 4) (c le 1) (c tout 1) (c premier 2) (c apercu 3) (c dun 1) (c village 3) 
(c dune 2) (c ville 2) (c dans 1) (c le 1) (c paysage 4) (c cest 1) (c quen 1) (c lui 1) (c le 1) (c lointain 2) (c vibre 2) (c en 1) (c forte 2) (c osmose 3) (c avec 2) (c le 1) (c proche 2) 
(c lhabitude 4) (c na 1) (c pas 1) (c encore 3) (c fait 1) (c son 1) (c oeuvre 2) 
(c nous 1) (c commencons 3) (c tout 1) (c juste 1) (c a 1) (c nous 1) (c y 1) (c retrouver 3) (c et 1) (c le 1) (c paysage 3) (c dun 1) (c coup 1) (c disparait 3) (c comme 2) (c la 1) (c facade 3) (c dune 2) (c maison 2) (c lorsque 2) (c nous 1) (c y 1) (c entrons 2) 
(c celui 2) (c ci 1) (c na 1) (c pas 1) (c encore 3) (c lhegemonie 4) (c que 1) (c donne 2) (c une 2) (c exploration 4) (c continue 3) (c devenue 3) (c habitude 4)
(c nous 2) (c sommes 2) (c mis 1) (c un 1) (c jour 1) (c a 1) (c nous 1) (c acoutumer 4) (c a 1) (c un 1) (c lieu 2) (c et 1) (c cette 2) (c toute 2) (c premiere 3) (c image 3) (c na 1) (c pu 1) (c etre 2) (c retrouvee 3)

)

       objetsperdus_beatdur (bpmtobeatdur 80))
(setf objetsperdus_tune (make-instance 'tune :grid objetsperdus_grid :beatduration 
objetsperdus_beatdur :tunename "objetsperdus" :NbBeatsPerMeasure 1))
(setf (gethash '"objetsperdus" *available-grids*) objetsperdus_tune)
|#


;bonjour, BPM=120
;--------------------------------------------------------------------------------------------------------------------
; 

(setf bonjour_grid
      '( (c bonjour 2) (c bonjour 2) (c madame 3) (c bonjour 2) (c bonjour 2) (c monsieur 2))

       bonjour_beatdur (bpmtobeatdur 120))
(setf bonjour_tune (make-instance 'tune :grid bonjour_grid :beatduration 
bonjour_beatdur :tunename "bonjour" :NbBeatsPerMeasure 1))
(setf (gethash '"bonjour" *available-grids*) bonjour_tune)





;----------------------
;(send-available_grids host_server prtRcv prtSnd)

