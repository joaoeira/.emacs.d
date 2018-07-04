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


;; Main Settings Files:
(require 'custom-functions)
(require 'package-settings)
(package-initialize) ;; loading packages from package.el
(require 'general-settings)

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




;; separate settings files

(global-set-key (kbd "C-g") 'keyboard-escape-quit)
