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
  :config
  (linum-mode -1)
  
  )



(provide 'package-settings)
