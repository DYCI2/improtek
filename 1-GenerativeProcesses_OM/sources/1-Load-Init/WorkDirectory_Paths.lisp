;J. Nika, Nov. 2011
;
; V�rifie que le path d�fini dans "WorkDirectory.lisp" existe bien. Si ce n'est pas le cas demande la s�lection d'un nouveau r�pertoire de travail.



(in-package :om)


;GLOBAL VARIABLES
;----------------

;(setf file_defining_path (merge-pathnames
;                    (make-pathname :name "WorkDirectory" :type "lisp" 
;                                   :directory '(:relative))
;                    *load-pathname*))


(setf file_defining_path 
      (make-pathname :name "WorkDirectory" 
                     :type "lisp" 
                     :directory (append *improtek-source-dir* (list "1-Load-Init"))
                     ))


#|
Warning: (defparameter prtrcv) being redefined in /Users/jnika/Zeugm/Zeugm_OM/OM-LIBRARIES/improtek/sources/StartServerMax.lisp (previously in /Users/jnika/Zeugm/Zeugm_OM/OM-LIBRARIES/improtek/sources/WorkDirectory_Paths.lisp).

Warning: (defparameter prtsnd) being redefined in /Users/jnika/Zeugm/Zeugm_OM/OM-LIBRARIES/improtek/sources/StartServerMax.lisp (previously in /Users/jnika/Zeugm/Zeugm_OM/OM-LIBRARIES/improtek/sources/WorkDirectory_Paths.lisp).

Warning: (defparameter host_server) being redefined in /Users/jnika/Zeugm/Zeugm_OM/OM-LIBRARIES/improtek/sources/StartServerMax.lisp (previously in /Users/jnika/Zeugm/Zeugm_OM/OM-LIBRARIES/improtek/sources/WorkDirectory_Paths.lisp).;;


(defvar prtRcv 7413)
(defvar prtSnd 7414)
(defvar host_server "127.0.0.1") 
;(defvar *server* nil)
|#

(defparameter channel_melo 2)
(defparameter channel_harmo 1)

;=============================================================================================================================================================================================================

(defun change_path_directory ()
  (progn
    (format *om-stream* "Select work directory~%")
    (setf new_path_work_directory (om-choose-directory-dialog :directory (make-pathname :directory oa::*api-directory*)))
    (setf path_work_directory new_path_work_directory))
       ;On �crit dans le fichier le bon path
  (WITH-OPEN-FILE (out file_defining_path :direction :output  :if-does-not-exist :create :if-exists :supersede)
                       ;:external-format :|TEXT|)
    (prin1 '(in-package :om) out)
    (terpri out)
    (write-char #\( out)
    (prin1 'setf out)
    (write-char #\Space out)
    (prin1 'path_work_directory out)
    (write-char #\Space out)
    (prin1 new_path_work_directory out) 
    (write-char #\) out)
    (terpri out)
    (terpri out)
    (let (( comment ";To modify the path of the work directory, close this file and call (change_path_directory)"))
    (write-string comment out))
    )
  )

(defun chooseapath ()
  (om-choose-directory-dialog :directory (make-pathname :directory oa::*api-directory*)))

;CHANGE THE PATH OF THE WORK DIRECTORY IF THE ONE STORED IN WorkDirectory.lisp DOESN'T EXIST
;-------------------------------------------------------------------------------------------------

;Modif J�r�me 12/12/12
(defun check_path_work_directory ()
  
    ;S'il n'existe pas on ouvre une fenetre pour le choisir
  (when (or (not path_work_directory)(not (directory path_work_directory)))
    (change_path_directory)
    ))


(check_path_work_directory)

;(change_path_directory)


; D�finition des paths des diff�rents fichiers et dossiers dans le r�pertoire de travail
;-------------------------------------------------------------------------------------------------

; Tunes directory (used in Antescofo.lisp)
(defvar path_tunessavedir path_work_directory)
; Midibuff (used in Antescofo.lisp, CommunicationMax.lisp)
(defvar path_midibuff (format nil "~a~a" path_work_directory "midibuff.mid"))


; Path fichier d'apprentissage substitution (used in Antescofo.lisp)
(defvar path_labelized (format nil "~a~a" path_work_directory "labelized.mid"))


; Polyphonic midibuff for the simultaneous creation of the "Melo-Harmo" oracles and the "Voicings" oracles (used in CommunicationMax.lisp)
(defvar path_midibuff_melo-harmo (format nil "~a~a" path_work_directory "midibuff_melo-harmo.mid"))
; Default path for Antescofo (used in Antescofo.lisp)
(defvar path_bufferAntescofo (format nil "~a~a" path_work_directory "buffer-for-antescofo.txt"))

; Corpus calculated from live sessions
(defvar path_dir_oracle_melo_harmo (format nil "~a~a" path_work_directory "_Corpus/Oracles_melo_harmo"))
(defvar path_dir_oracle_voicings (format nil "~a~a" path_work_directory "_Corpus/Oracles_voicings"))
(defvar path_dir_live_oracles (format nil "~a~a" path_work_directory "_Oracles"))


(ensure-directories-exist path_dir_oracle_melo_harmo)
(ensure-directories-exist path_dir_oracle_voicings)
(ensure-directories-exist path_dir_live_oracles)


(print path_tunessavedir)
(print path_midibuff)
(print path_midibuff_melo-harmo)
(print path_bufferAntescofo)
(print path_dir_oracle_melo_harmo)
(print path_dir_oracle_voicings)
(print path_dir_live_oracles)


;(defun define_paths_save (s)
;(setf path_tunessavedir s
;      path_midibuff (format nil "~a/~a" s "midibuff.mid")
;      path_midibuff_melo-harmo (format nil "~a/~a" s "midibuff_melo-harmo.mid")
;      path_bufferAntescofo (format nil "~a/~a" s "buffer-for-antescofo.txt")));;

;(defun define_paths_corpus (s)
;  (setf path_dir_oracle_melo_harmo (format nil "~a/~a" s "Oracles_melo_harmo")
;        path_dir_oracle_voicings (format nil "~a/~a" s "Oracles_voicings")))

