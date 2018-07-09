;;; init.el --- main config file
;;; Commentary:
;;; Code:

;; Paths to Load:
(add-to-list 'load-path "~/.emacs.d/settings")
(setq plugin-path "~/.emacs.d/el-get/")
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")


;; package.el + repositories:
(require 'package)
(add-to-list 'package-archives '("marmalade" . "https://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/")))


(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(eval-when-compile
  (require 'use-package))


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("923ee73494ea3611d2a1ff9f31bbf8d71b0b0cc2aeb4a6e0944ec6c83bc0ac23" "c90fd1c669f260120d32ddd20168343f5c717ca69e95d2f805e42e88430c340e" default)))
 '(org-capture-templates
   (quote
    (("t" "New task" entry
      (file+headline "~/Dropbox/emacs/main.org" "To-Do")
      "** TODO %?")
     ("a" "Something to put in Anki" entry
      (file+headline "~/Dropbox/emacs/main.org" "Anki")
      "** TODO %?")
     ("n" "note" entry
      (file "~/Dropbox/emacs/ideas.org")
      "* %? :NOTE:
%U
%a
" :clock-in t :clock-resume t))))
 '(org-format-latex-options
   (quote
    (:foreground default :background default :scale 2.0 :html-foreground "Black" :html-background "Transparent" :html-scale 1.0 :matchers
                 ("begin" "$1" "$" "$$" "\\(" "\\["))))
 '(package-selected-packages
   (quote
    (nov nov\.el elfeed-goodies pocket-reader elfeed flatland-theme markdown-mode ein org-download org-noter pdf-tools use-package magit ido-vertical-mode ido-completing-read+ smex flycheck cyberpunk-theme))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-level-1 ((t (:foreground "#ff1493" :height 1.0))))
 '(org-level-2 ((t (:foreground "#ffff00" :height 1.0))))
 '(org-level-3 ((t (:foreground "#00ff00" :height 1.0))))
 '(org-level-4 ((t (:foreground "#afd8af"))))
 '(org-level-7 ((t (:foreground "#4c83ff"))))
 '(org-todo ((t (:foreground "#e51616" :box (:line-width 1 :style none) :weight bold)))))



;; Main Settings Files:
(require 'custom-functions)
(require 'package-settings)
(package-initialize) ;; loading packages from package.el
(require 'general-settings)
(require 'elfeed-settings)

;;cyberpunk theme
(load-theme 'cyberpunk t)

(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)
(ido-everywhere 1)
(require 'ido-completing-read+)
(ido-ubiquitous-mode 1)
(require 'ido-vertical-mode)
(ido-mode 1)
(ido-vertical-mode 1)
(setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right)

;(require 'flycheck)
;(global-flycheck-mode)

(pdf-tools-install)

(require 'ein)



;; separate settings files

(global-set-key (kbd "C-g") 'keyboard-escape-quit)
