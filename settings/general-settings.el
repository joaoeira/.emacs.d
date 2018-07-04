
(setq current-language-environment "English") ;; Environment Language
(setq inhibit-startup-screen t) ;; Disable start-up Screen

(menu-bar-mode 0) ;; Toggle menu bar

(require 'tool-bar) ;; Toggle toolbar
(tool-bar-mode 0)

(if window-system (scroll-bar-mode 0)) ;; Toggle scroll bar

(require 'mwheel) ;; Toggle mouse wheel support for scrolling
(mouse-wheel-mode 1)

(blink-cursor-mode 0) ;; Toggle cursor blink

(transient-mark-mode 1) ;; Transient-Mark Mode (highlight selections)

(global-hl-line-mode 1) ;; Highlight line with cursor

(require 'paren) ;; Highlight parentheses when cursor is near
(show-paren-mode 1)
(electric-pair-mode 1) ;; Insert matching brackets when typed

(setq require-final-newline 1) ;; Require final newlines when saved
(setq next-line-add-newlines t) ;; Add new line when going to the next line


(global-linum-mode t) ;; Display line number at left

;; Mode Line Costumization
(line-number-mode 0)
(column-number-mode 0)
(display-time-mode 1)
(setq display-time-24hr-format t)
(size-indication-mode 0)

(setq-default case-fold-search 1) ;; Ignore case when searching

(setq-default fill-column 70) ;; Number of characters to fill column 
(setq-default truncate-lines nil) ;; Toggle truncate
(setq truncate-partial-width-windows nil) ;; Truncate in partial-width windosw

;; (defun custom-set-frame-size ()
;;   (add-to-list 'default-frame-alist '(height . 50))
;;   (add-to-list 'default-frame-alist '(width . 178)))
;; (custom-set-frame-size)
;; (add-hook 'before-make-frame-hook 'custom-set-frame-size)

;; Buffer window size modification keys
(global-set-key (kbd "S-C-<left>") 'shrink-window-horizontally)
(global-set-key (kbd "S-C-<right>") 'enlarge-window-horizontally)
(global-set-key (kbd "S-C-<down>") 'shrink-window)
(global-set-key (kbd "S-C-<up>") 'enlarge-window)

;; Keybind [END/HOME] keys to [START/END] of buffers
(define-key input-decode-map "\e[1;5A" [C-up])
(define-key input-decode-map "\e[1;5B" [C-down])

;; Indentation
(setq-default indent-tabs-mode nil) ;; Spaces as default, instead of tabs
(setq c-basic-offset 8) ;; Indentation styles
(setq c-default-style (quote (
    (c-mode . "bsd") 
    (java-mode . "java") 
    (awk-mode . "awk") 
    (other . "gnu"))))

(global-set-key [f4] 'goto-line) ;; Keybind [f4] key to [Go-to-line]

(fset 'yes-or-no-p 'y-or-n-p)

;; Text decoration
(require 'font-lock)
(setq font-lock-maximum-decoration 3)
(global-font-lock-mode 1)
(global-hi-lock-mode 1)
(setq jit-lock-contextually t)
(setq jit-lock-stealth-verbose t)


(setq backup-inhibited t) ;; Disable backup
(setq auto-save-default nil) ;; Disable auto save

(provide 'general-settings)
;;; general-settings.el ends here
