;; reference:
;; https://github.com/purcell/emacs.d/blob/master/lisp/init-ruby-mode.el
;;
;; the non-bundled ruby-mode isn't a derived mode of
;; prog-mode: we run the latter's hooks anyway in that case.
(eval-after-load 'ruby-mode
  (add-hook 'ruby-mode-hook
          (lambda ()
            (unless (derived-mode-p 'prog-mode)
              (run-hooks 'prog-mode-hook)))))

(add-hook 'ruby-mode-hook 'pnh-paredit-no-space)
(add-hook 'ruby-mode-hook 'paredit-mode)
(add-hook 'ruby-mode-hook 'inf-ruby-keys)

(add-to-list 'auto-mode-alist '("Rakefile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rxml\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.rjs\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.irbrc\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.pryrc\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.builder\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile\\'" . ruby-mode))

; (eval-after-load 'inf-ruby
;     (add-to-list 'ac-modes 'inf-ruby-mode))
; (add-hook 'inf-ruby-mode-hook 'ac-inf-ruby-enable)
;
; (eval-after-load 'ruby-mode
;   (define-key ruby-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
;   (define-key ruby-mode-map (kbd "TAB") 'indent-for-tab-command))
;
; (eval-after-load 'inf-ruby
;     (define-key inf-ruby-mode-map (kbd "TAB") 'auto-complete))

