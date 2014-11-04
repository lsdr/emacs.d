;; reference:
;; https://github.com/purcell/emacs.d/blob/master/lisp/init-ruby-mode.el
;; https://github.com/citizen428/emacs.d/blob/master/config/ruby-conf.el
;;
;; the non-bundled ruby-mode isn't a derived mode of
;; prog-mode: we run the latter's hooks anyway in that case.
(require 'ruby-mode)
(require 'ruby-hash-syntax)

;; add other typically ruby files to ruby-mode
(add-to-list 'auto-mode-alist '("\\.rake\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.irbrc\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.pryrc\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.ru\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("\\.gemspec\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Rakefile\\'" . ruby-mode))
(add-to-list 'auto-mode-alist '("Gemfile\\'" . ruby-mode))

;; some helpful key mappings
(after-load 'ruby-mode
  (define-key ruby-mode-map (kbd "RET") 'reindent-then-newline-and-indent)
  (define-key ruby-mode-map (kbd "TAB") 'indent-for-tab-command))

;; support for camelCase cursor movement
(add-hook 'ruby-mode-hook 'subword-mode)

;; add "end" automagically when proper
(require 'ruby-end)

;; support for rbenv (automagically uses global, etc)
(require 'rbenv)
(global-rbenv-mode)

;; using paredit with ruby
;; (add-hook 'ruby-mode-hook 'paredit-mode)

;; inferior ruby-mode
(require 'inf-ruby)
(require 'ac-inf-ruby)

(after-load 'auto-complete
  (add-to-list 'ac-modes 'inf-ruby-mode))

(add-hook 'inf-ruby-mode-hook 'ac-inf-ruby-enable)

(after-load 'inf-ruby
  (define-key inf-ruby-mode-map (kbd "TAB") 'auto-complete))

;; ruby repl (pry) avaliable everywhere!
(global-set-key (kbd "C-c r r") 'inf-ruby)

;; context-based completion, REPL and doc lookup
(require 'robe)
(after-load 'ruby-mode
  (add-hook 'ruby-mode-hook 'robe-mode))
(after-load 'robe
  (add-hook 'robe-mode-hook 'ac-robe-setup)
  (add-hook 'robe-mode-hook
            (lambda ()
              (add-to-list 'ac-sources 'ac-source-robe)
              (set-auto-complete-as-completion-at-point-function))))

;; that's it
