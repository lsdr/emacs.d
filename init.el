;; package management
(load-file (concat user-emacs-directory "utils.el"))

(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/"))
(package-initialize)

(when (null package-archive-contents)
  (package-refresh-contents))

(defvar my-packages '(better-defaults smex ido-hacks auto-complete
                      projectile paredit zenburn-theme diminish
                      clojure-mode cider
                      ruby-hash-syntax inf-ruby ac-inf-ruby rbenv
                      ruby-tools ruby-end robe
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
      visible-bell t
      backup-directory)

;; don't save inexistent buffer
(setq confirm-nonexistent-file-or-buffer nil)

;; working files and dirs
(setq backup-directory-alist `(("." . "~/.emacs.d/saves")))

;; setting up ido and smex
(setq smex-save-file (concat user-emacs-directory ".smex-items"))
(smex-initialize)

(require 'ido-hacks)
(ido-hacks-mode)

(global-set-key (kbd "M-x") 'smex) ; has to happen after ido-hacks-mode

;; paredit loaded globally
(autoload 'enable-paredit-mode "paredit")

;; enabling projectile
(projectile-global-mode)

;; all set! now load script files in conf.d
(load-config "ui")
(load-config "auto-complete")
(load-config "ruby")
(load-config "markup")

;; that's it
