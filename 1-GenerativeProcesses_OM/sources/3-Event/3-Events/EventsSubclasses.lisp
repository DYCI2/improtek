 (in-package :om)

(format *om-stream* "loading MIDIHARMBEAT~%")

;ISSU D'UN DECOUPAGE DE L'ANCIEN "Improvizer.lisp".

;Ensuite à découper en classe beat et midiharmbeat
;--------------------------------------------------------------------------------



(defclass* harmbeat (event)
  (
   (NumBeat :initform 1 :initarg :NumBeat :accessor NumBeat) ; in the measure
   (label :initform (make-instance 'harmlabel) :initarg :label :accessor label :type harmlabel)
   (RelHarmLabel :initform () :initarg :RelHarmLabel :accessor RelHarmLabel :type harmlabel)
   ))

(defclass* midiharmbeat (harmbeat)
  (
   (data :initform (make-instance 'mididata) :initarg :data :accessor data :type mididata)      ; liste 5uples (midi onset dur vel can)
   ))

(defun NewMidiharmbeat (root chordtype midiset &optional duration)
  (let* ((midiharmbeat (make-instance 'midiharmbeat
                                   :Label (NewHarmLabel root chordtype)
                                   :data (NewMididata midiset))))
    (when duration (setf (duration midiharmbeat) duration))
    midiharmbeat))

(defmethod clone-object ((self midiharmbeat))
  (let ((cEvent (clone self)))
    (setf (MidiSet cEvent) 
          (copy-tree (MidiSet  self)))
    cEvent))

(defmethod empty-Event? ((self midiharmbeat))
  (null (midiset (data self))))

(defmethod MidiSet ((self midiharmbeat)) (MidiSet (data self)))
(defmethod (setf Midiset) ((val list) (self midiharmbeat)) (setf (MidiSet (data self)) val))
(defmethod harmlabel ((self midiharmbeat)) (label self))
(defmethod (setf harmlabel) ((val t) (self midiharmbeat)) (setf (label self) val))

;GENERICITE : PB CAR LES FONCTIONS DEDANS SONT DEFINIES DANS UN AUTRE FICHIER
(defmethod FormatOutputSequenceOf ((sequence list) (whencontent midiharmbeat) &optional beatduration)
 (let* ((ProcessedBeatsSequence sequence)         
        (ProcessedBeatsSequence (thread-Beats ProcessedBeatsSequence beatduration))
        (ProcessedBeatsSequence (transfer-syncopated-event ProcessedBeatsSequence beatduration))
        (ProcessedBeatsSequence (add-scenario-to-beatlist ProcessedBeatsSequence beatduration))
        ) ProcessedBeatsSequence))



(defclass* audioharmbeat (harmbeat)
  (
   (data :initform (make-instance 'audiodata) :initarg :data :accessor data :type audiodata)      
   ))

(defun NewAudioHarmbeat (root chordtype idxinbuffer duration &optional dates)
  (let* ((AudioHarmbeat (make-instance 'audioHarmbeat
                                   :label (NewHarmLabel root chordtype)
                                   :duration duration
                                   :data (make-instance 'audiodata
                                                        :IdxInBuffer idxinbuffer
                                                        :InitDuration duration
                                                        )
                                   )))
    (when dates (setf (DatesInBuffer (data AudioHarmbeat)) dates))
    AudioHarmbeat))

(defmethod NewAudioHarmbeatList ((l list) &optional beatduration)
  (let ((beatdur 500)) 
    (if beatduration (setf beatdur beatduration))
  (loop for i from 0 to (list-length l)
        collect (NewAudioHarmbeat (nth 0 (nth i l)) (nth 1 (nth i l)) i beatdur))))

(defmethod empty-Event? ((self audioharmbeat))
  (or (null (IdxInBuffer self)) (< (IdxInBuffer self) 0)))

(defclass* AudioDescrBeat (event)
  (
   (label :initform (make-instance 'AudioDescr) :initarg :label :accessor label :type AudioDescr)
   (data :initform (make-instance 'audiodata) :initarg :data :accessor data :type audiodata)
   (NumBeat :initform 1 :initarg :NumBeat :accessor NumBeat) ; in the measure
   ))


(defun NewAudioDescrBeat (IdxClusterDesc1 IdxClusterDesc2 IdxInBuffer duration &optional ClusterMeanValuesDesc1 ClusterMeanValuesDesc2 dates)
  (let* ((AudioDescrBeat (make-instance 'AudioDescrBeat
                                   :label (NewAudioDescrLabel
                                           IdxClusterDesc1 IdxClusterDesc2 ClusterMeanValuesDesc1 ClusterMeanValuesDesc2)
                                   :duration duration
                                   :data (NewAudioData idxinbuffer duration))))
    (when dates (setf (DatesInBuffer (data AudioDescrBeat)) dates))
    AudioDescrBeat))


(defmethod TransposeClonedEvent ((self AudioDescrBeat) delta)
   (let* ((ClonedEvent (clone-object self))
          (OrigIdx (IdxClusterDesc1 (label ClonedEvent)))
          (NewIdx 0)
          (ValuesDesc1 (ClusterMeanValuesDesc1 (label ClonedEvent))))
     (setf (label ClonedEvent) (TransposeLabel (label ClonedEvent) delta))
     (setf NewIdx (IdxClusterDesc1 (label ClonedEvent)))
     (if ValuesDesc1
         (setf (CurrentTransfo (data ClonedEvent)) 
               (/ 
                (nth NewIdx ValuesDesc1)  
                (nth OrigIdx ValuesDesc1))
               ); Transformation value = "coef"
       (setf (CurrentTransfo (data ClonedEvent)) 
             (* 1.0 (- NewIdx OrigIdx))
             ); Transformation value = "idx"
       )
     ClonedEvent))





;====================================================================================================================================================================================
;====================================================================================================================================================================================
;MARC 10/2/2012 generic function that works with 'Events', but also with objects of specific classes ('meloEvents', 'relativechords', ...)
;you need to redefine the following functions: 
;- TransposeClonedEvent ((self Event) int)
;- eligible-Event? ((self Event) (label list))
;- CompareEvents ((Event1 Event) (event2 Event))
;- clone-object ((self Event))
;when using label objects instead of simple lists ('garnerlabel'...):
;- TransposeLabel ((label list) int)  
;- FormatLabel ((label list))
;- undefined-label? ((label list))

;--> continuations-by-suppleance, find-Event-label-match, choose-factor-link uses these functions only
;====================================================================================================================================================================================
;====================================================================================================================================================================================


#|
(defmethod CompareEvents ((event1 Event) (event2 Event)) 
   (or (equal (label event1) (label event2)) 
       (equalLabel (label event1) (label event2))))

(defmethod TransposeClonedEvent ((self Event) int)
   (let ((ClonedEvent (clone-object self))) 
     (setf (label ClonedEvent) (TransposeLabel (label ClonedEvent) int))
     (setf (data ClonedEvent) (TransposeData (data ClonedEvent) int))
     ClonedEvent))

(defmethod empty-Event? ((self Event))
  (null (data self)))

(defmethod eligible-Event? ((self Event) (label list)) 
  (and ;(not (empty-Event? self))                     
       (or (null label) (equalLabel label (label self)))))

(defmethod clone-object ((self Event))
  (let ((cEvent (clone self)))
    (setf (MidiSet cEvent) 
          (copy-tree (MidiSet  self)))
    cEvent))

(defmethod eligible-feature? ((self event) (o improvizer))
  (if (null (feature o)) t 
    (if (integerp (feature self))
        (member (abs (feature self)) (feature o))  ;'features' are MIDI codes, thus 'abs' is needed for prolongation
        nil)))     ;'feature' = nil when the midiharmbeat has no feature, thus it should be rejected if the oracle looks for features
;(defmethod eligible-feature? ((self t) (o improvizer)) t)      ;;;;;;;;;;for genericity


|#









