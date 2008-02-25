;;; 50yaml-mode-gentoo.el --- 

;; Copyright (C) 2008  Bart Teeuwisse
;; Yaml mode configuration

(add-to-list 'load-path "@SITELISP@")
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-hook 'yaml-mode-hook
          '(lambda ()
             (define-key yaml-mode-map "\C-m" 'newline-and-indent)))

