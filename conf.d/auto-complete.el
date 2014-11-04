;; basic auto-completion support

;; lang support has to be configured on its own config file
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)

(global-auto-complete-mode t)
(setq ac-auto-show-menu t)
(setq ac-dwim t)

;; wait 3 chars to display completion
;; (setq ac-auto-start 3)

;; start completion using TAB
;; (setq ac-auto-start nil)
;; (define-key ac-complete-mode-map "\t" 'ac-complete)
;; (define-key ac-complete-mode-map "\r" nil)
;; (ac-set-trigger-key "TAB")
