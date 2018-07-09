;;
;;
;;   PACKAGE CONFIGURATIONS
;;     USING USE-PACKAGE
;;


;; SMEX CONFIGURATION
(use-package smex
  :ensure t
  :bind (("M-x" . smex))
  :bind (("M-X" . smex-major-mode-commands))
  ;; This is your old M-x.
  :bind (("C-c C-c M-x" . execute-extended-command))
  )


;; MAGIT CONFIGURATION
(use-package magit
  :bind (("C-x g" . magit-status))
  :bind (("C-x M-g" . magit-dispatch-popup))  
  )

;;PDF-TOOLS CONFIGURATION

(use-package pdf-tools
 
; (add-hook 'term-mode-hook (lambda () (linum-mode -1)))
  )


;;ORG-MODE CONFIGURATION
(require 'org)
;scale the latex preview
(setq org-format-latex-options (plist-put org-format-latex-options :scale 2.0))

(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c C-l") 'org-insert-link)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c b") (lambda() (interactive)(find-file "~/Dropbox/emacs/main.org")))


 (setq org-directory "Dropbox/emacs")


;;MARKDOWN MODE CONFIGURATION
(use-package markdown-mode
  :ensure t
  :commands (markdown-mode gfm-mode)
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :init (setq markdown-command "multimarkdown"))

;;ELFEED CONFIGURATION
(use-package elfeed
  :ensure t
  )


;;POCKET-READER CONFIGURATION
(use-package pocket-reader
  :ensure t

  )

;;NOV.EL CONFIGURATION
(use-package nov
  :ensure t

  )

(provide 'package-settings)


