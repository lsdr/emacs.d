(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;; user interface customizations
;; (set-face-attribute 'default nil :font "Monaco 12")
;; (custom-set-variables
;;  '(tool-bar-mode nil))
(set-default-font "Monaco 12")
(custom-set-variables '(tool-bar-mode nil))

;; list of packages which will be installed if they are not be present
;; from: https://github.com/technomancy/emacs-starter-kit
(when (not package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(starter-kit starter-kit-lisp starter-kit-ruby starter-kit-js color-theme-solarized monokai-theme)
  "A list of packages to ensure are installed at launch.")

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))
