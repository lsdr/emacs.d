(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

;; user interface customizations
(set-face-attribute 'default nil :font "Monaco 12")
(custom-set-variables
 '(tool-bar-mode nil))
