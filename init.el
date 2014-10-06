;; TODO:
;; 1. install basic support for Clojure, LISP and ML
;; 2. check support for python, ruby programming
;;
;;
;; package management
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(package-initialize)

(when (null package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(better-defaults smex ido-hacks))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; general settings
(setq inhibit-startup-message t
      ido-use-virtual-buffers t
      ido-handle-duplicate-virtual-buffers 2
      column-number-mode t)

;; load script files in conf.d
(mapc 'load (directory-files (concat user-emacs-directory "conf.d")
                              t "^[^#].*el$"))

;; interface improvements
(set-default-font "Droid Sans Mono 14") ; modern font please

;; working files and dirs
(setq backup-directory-alist `(("." . "~/.emacs.d/saves")))

;; setting up ido and smex
(setq smex-save-file (concat user-emacs-directory ".smex-items"))
(smex-initialize)

(require 'ido-hacks)
(ido-hacks-mode)

(global-set-key (kbd "M-x") 'smex) ; has to happen after ido-hacks-mode

;; that's it
;; check the README for pointers, references and other emacs.d to learn from
