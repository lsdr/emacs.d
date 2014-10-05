;; TODO:
;; setup IDO and smex-- looked like awesome tools for a beginner when playing
;;                      with the starter-kit
;; install basic support for Clojure, LISP and ML
;;

;; package management
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(add-to-list 'package-archives
             '("melpa-stable" . "http://melpa-stable.milkbox.net/packages/") t)
(package-initialize)

(when (null package-archive-contents)
  (package-refresh-contents))

;; interface
(set-default-font "Droid Sans Mono 14")      ; modern font please
(custom-set-variables '(tool-bar-mode nil))  ; no stinkin' toolbar

;; working files and dirs
(setq backup-directory-alist `(("." . "~/.emacs.d/saves")))


;;;;;;; previous attempt ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

; (require 'package)
; (add-to-list 'package-archives
;              '("melpa" . "http://melpa.milkbox.net/packages/") t)
; (add-to-list 'package-archives
;              '("marmalade" . "http://marmalade-repo.org/packages/") t)
; (package-initialize)

; ;; list of packages which will be installed if they are not be present
; ;; from: https://github.com/technomancy/emacs-starter-kit
; (when (not package-archive-contents)
;   (package-refresh-contents))

; (defvar my-packages '(starter-kit
;                       starter-kit-lisp
;                       starter-kit-bindings
;                       starter-kit-ruby
;                       clojure-mode
;                       sml-mode
;                       scpaste))

; (dolist (p my-packages)
;   (when (not (package-installed-p p))
;     (package-install p)))

; ;; user interface customizations
; ;; (set-face-attribute 'default nil :font "Monaco 12")
; ;; (custom-set-variables
; ;;  '(tool-bar-mode nil))
; (set-default-font "Droid Sans Mono 14")

; ;; setting up backup
; (setq backup-directory-alist `(("." . "~/.emacs.d/saves")))

; ;; set frame size according to display resolution
; ;; source: http://stackoverflow.com/questions/92971/how-do-i-set-the-size-of-emacs-window
; (defun set-frame-size-according-to-resolution ()
;   (interactive)
;   (if window-system
;   (progn
;     ;; use 120 char wide window for largeish displays
;     ;; and smaller 80 column windows for smaller displays
;     ;; pick whatever numbers make sense for you
;     (if (>= (x-display-pixel-width) 1280)
;            (add-to-list 'default-frame-alist (cons 'width 150))
;            (add-to-list 'default-frame-alist (cons 'width 120)))
;     ;; for the height, subtract a couple hundred pixels
;     ;; from the screen height (for panels, menubars and
;     ;; whatnot), then divide by the height of a char to
;     ;; get the height we want
;     (add-to-list 'default-frame-alist
;          (cons 'height (/ (- (x-display-pixel-height) 100)
;                              (frame-char-height)))))))

; (set-frame-size-according-to-resolution)
