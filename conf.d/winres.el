;; winres.el -- window resolution hacks
;;
;; set frame size according to display resolution
;; source: http://stackoverflow.com/questions/92971/how-do-i-set-the-size-of-emacs-window
; (defun set-frame-size-according-to-resolution ()
;   (interactive)
;   (if window-system
;   (progn
;     ;; use 120 char wide window for largeish displays
;     ;; and smaller 80 column windows for smaller displays
;     ;; pick whatever numbers make sense for you
;     (if (>= (x-display-pixel-width) 1152)
;            (add-to-list 'default-frame-alist (cons 'width 120))
;            (add-to-list 'default-frame-alist (cons 'width 100)))
;     ;; for the height, subtract a couple hundred pixels
;     ;; from the screen height (for panels, menubars and
;     ;; whatnot), then divide by the height of a char to
;     ;; get the height we want
;     (add-to-list 'default-frame-alist
;          (cons 'height (/ (- (x-display-pixel-height) 80)
;                              (frame-char-height)))))))

; (set-frame-size-according-to-resolution)
