

;(autoload 'python-mode "python-mode" "Python Mode." t)
;(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
;(add-to-list 'interpreter-mode-alist '("python" . python-mode))
;(require 'python-mode)
(print "Loading init-python.el")
(require 'python)
;(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
(add-hook 'python-mode-hook
      (lambda ()
	(print "python-mode-hook")
	(set-variable 'py-indent-offset 4)
	(print "debug 1")
	(set-variable 'indent-tabs-mode nil)
	(print "debug 2")
	(setq py-smart-indentation nil)
	(print "debug 3")
	(setq py-indent-offset 4)
	(print "debug 4")
    	(setq py-continuation-offset 0)
	(print "debug 5")
	(define-key python-mode-map (kbd "RET") 'newline-and-indent)
	(print "debug 6")
	; (smart-operator-mode-on)
	(print "debug 7")
	(print "End python-mode-hook")
	))
(print "Debug")    
;; pymacs
(setenv "PYMACS_PYTHON" "python2.6") 
(autoload 'pymacs-apply "pymacs")
(autoload 'pymacs-call "pymacs")
(autoload 'pymacs-eval "pymacs" nil t)
(autoload 'pymacs-exec "pymacs" nil t)
(autoload 'pymacs-load "pymacs" nil t)
;(eval-after-load "pymacs"
;    '(add-to-list 'load-path "~/apps/emacs/rope/ropemacs")
;)
;;  '(add-to-list 'pymacs-load-path YOUR-PYMACS-DIRECTORY"))

(pymacs-load "ropemacs" "rope-")
(setq ropemacs-enable-autoimport t)

(require 'ecb)
(print "End init-python")

