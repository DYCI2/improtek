(in-package :om)
(setf *workspace* "/Users/jnika/Documents/Git-projects/ImproteK/WorkspaceImproteK/")
(setf *start-server* "/Users/jnika/Documents/Git-projects/ImproteK/1-GenerativeProcesses_OM/sources/StartServerMax.lisp")

(defun choose-user-ws-folder ()
  (parse-namestring *workspace*)) ;ABSOLUTE PATH WORKSPACE




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