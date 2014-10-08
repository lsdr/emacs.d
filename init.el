;; package management
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

(when (null package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(better-defaults smex ido-hacks auto-complete
                      projectile paredit zenburn-theme
                      clojure-mode cider
                      ruby-additional ruby-hash-syntax inf-ruby ac-inf-ruby
                      markdown-mode yaml-mode))

(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; general settings
(setq-default indent-tabs-mode nil) ;; no tabs

(setq inhibit-startup-message t
      ido-use-virtual-buffers t
      ido-handle-duplicate-virtual-buffers 2
      column-number-mode t
      backup-directory )

;; interface improvements
(set-default-font "Droid Sans Mono 14") ; modern font please
(load-theme 'zenburn t)

;; working files and dirs
(setq backup-directory-alist `(("." . "~/.emacs.d/saves")))

;; setting up ido and smex
(setq smex-save-file (concat user-emacs-directory ".smex-items"))
(smex-initialize)

(require 'ido-hacks)
(ido-hacks-mode)

(global-set-key (kbd "M-x") 'smex) ; has to happen after ido-hacks-mode

(autoload 'enable-paredit-mode "paredit")

(require 'auto-complete-config)
(ac-config-default)

;; load script files in conf.d
(mapc 'load (directory-files (concat user-emacs-directory "conf.d")
                              t "^[^#].*el$"))

;; that's it
