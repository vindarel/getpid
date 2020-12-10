

(defun getpid ()
  "Return the PID of the current Lisp process."
  #+sbcl
  (sb-posix:getpid)
  #+ccl
  (ccl::getpid)
  #+ecl
  (ext:getpid)
  #+lispworks
  (system::getpid)
  #+allegro
  (excl.ose:getpid))

(defun save-pid (&optional (filename "PID.txt"))
  "Save the current Lisp PID to this file."
  (let ((pid (getpid)))
    (with-open-file (f filename
                       :direction :output
                       :if-does-not-exist :create
                       :if-exists :supersede)
      (princ pid f))))
