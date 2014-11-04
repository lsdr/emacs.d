;; utility functions and macros to help emacs setup

;; set the default conf.d dir path
(defconst conf-dir (expand-file-name "conf.d/" user-emacs-directory)
  "Directory where all configuration files are at.")

;; simple, non-verbose way to load configs
(defun load-config (file-name)
  "Load configuration file."
  (load-file (concat conf-dir file-name ".el")))

;; work around possible elpa bug
(defmacro after-load (feature &rest body)
  "After FEATURE is loaded, evaluate BODY. Work around for a possible ELPA bug."
  (declare (indent defun))
  `(eval-after-load ,feature
     '(progn ,@body)))
