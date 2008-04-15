;;; 51rcodetools-gentoo.el ---

;; Copyright (C) 2008  Bart Teeuwisse
;; Rcodetools configuration

(add-to-list 'load-path "@SITELISP@")
(require 'rcodetools)
(if (featurep 'icicles)
    (require 'icicles-rcodetools))
