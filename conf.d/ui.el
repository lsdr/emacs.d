;; ui cosmetics and other tweakings

;; adding some color and a much improved modern font
(set-default-font "Droid Sans Mono 14")
(load-theme 'zenburn t)

;; disable visual feedback (bipping) altogether
(setq ring-bell-function 'ignore)

;; no initial message either
(setq initial-scratch-message nil)

;; y/n instead of long form yes or no
(defalias 'yes-or-no-p 'y-or-n-p)

;; reduce modeline clutter
(eval-after-load 'projectile '(diminish 'projectile-mode))
(eval-after-load 'paredit '(diminish 'paredit-mode))

;; Display ido results vertically, rather than horizontally
; (setq ido-decorations '("\n-> " "" "\n   " "\n   ..." "[" "]"
;                         " [No match]" " [Matched]" " [Not readable]"
;                         " [Too big]" " [Confirm]"))
;
; (add-hook 'ido-minibuffer-setup-hook
;           (defun ido-disable-line-truncation ()
;             (set (make-local-variable 'truncate-lines) nil)))
;
; (defun jf-ido-define-keys () ;; C-n/p is more intuitive in vertical layout
;   (define-key ido-completion-map (kbd "C-n") 'ido-next-match)
;   (define-key ido-completion-map (kbd "C-p") 'ido-prev-match))
;
; (add-hook 'ido-setup-hook 'jf-ido-define-keys)
