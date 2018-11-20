; Version pour lancer LA VERSION GIT SYNCHRONISEE
; Script associe : myLaunch.sh


(in-package :om)
(setf *workspace* "/Users/jnika/Documents/Git Projects/ImproteK/1-GenerativeProcesses_OM/WorkspaceImproteK/")
(setf *start-server* "/Users/jnika/Documents/Git Projects/ImproteK/1-GenerativeProcesses_OM/sources/StartServerMax.lisp")

(defun choose-user-ws-folder ()
  (parse-namestring *workspace*)) ;ABSOLUTE PATH WORKSPACE

#|
(defmethod InitWorkSpace ((self OMWorkSpace))
  "Load the globals folder, the package folder, the preferences file and all elements of 'self'."
  (declare (special *om-package-tree* *package-user*))
  (om-with-load-verbose nil
    (om-with-compiler-warnings nil
       (intiglobalslist)
       (init-globalsfolder)
       (setf *current-workSpace* self)

       (setf *package-user* (add-new-packages (list "User" nil nil nil nil) *om-package-tree*))
       (init-user-pathname)
       (load-package-from-folders)
       (ws-load-user-pack)

       (load-elements self)  ;; will also open the listener
       (setf (packages *current-workSpace*) (list *om-package-tree*))

       (setf (mypathname *om-package-tree*) (mypathname *current-workspace*))
       (setf (mypathname *om-globalsfolder*) 
             (om-make-pathname :directory (append (pathname-directory (mypathname self)) (list "globals"))))
       (AddPackage2Pack *om-globalsfolder* *om-package-tree*)
    ))


  		;ABSOLUTE PATH FICHIER START SERVER
 		(let ((path-file-startserver *start-server*))
    		(load path-file-startserver) 
    	)
    	;(om-inspect *current-tune*)
  	)
|#


;Init the WorkSpace specified by pathname.
(defun init-OM-session (pathname)
   (declare (special *patch-menu-functions* *patch-menu-classes* *om-package-tree*))
   ;(setf *splash-screen* (show-kero-pict nil))

   (init-om-package)                    
   (load-om-libs)

   ;;; check if it is the right place...
   ;;; start-audio now
   (mapcar 'player-open *enabled-players*)
   
   (workspace-from-name pathname)      ;; will set the preferences             
   (initWorkSpace *current-workSpace*) ;; will open the listener
   

   (catch :load-prefs 
     (handler-bind 
         ((error #'(lambda (err)
                     (om-message-dialog (format nil "Warning: An error occurred while setting the workspace preferences.~%=> ~A" err))
                     (delete-file (preferences-file) nil)
                      (setf *saved-pref* nil)
                      (throw :load-prefs :err)
                      )))
       (restore-preferences)
       ))
   
   (libs-autoload)

   (set-ompref 'prev-ws (mypathname *current-workSpace*))
   (save-omprefs)
   
   (oa::om-make-new-listener :initial-lambda #'(lambda () (in-package :om)) :input *listener-input*)
   (init-output)


   ;(om-close-window *splash-screen*)
   ;(setf *splash-screen* nil)
   (ShowObjectEditor *current-workSpace*)

(let ((path-file-startserver *start-server*))
    		(load path-file-startserver) 
    	)

   )