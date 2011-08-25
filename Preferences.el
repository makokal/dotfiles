;; Initial config, no toolbar and proper colors

(require 'color-theme)
(eval-after-load "color-theme"
  '(progn
     (color-theme-initialize)
;     (color-theme-jsc-light)
     ))

(tool-bar-mode -1)

;; Additional Config


;; Yasnippet
(add-to-list 'load-path
             "~/.emacs.d/plugins")
(require 'yasnippet-bundle)

;; Ido Mode
(setq ido-enable-flex-matching t)
(setq ido-everywhere t)
(ido-mode 1)

;; ==================================================================================
;; Cedet
;; (load-file"~/.emacs.d/plugins/cedet/common/cedet.el")
;; (global-ede-mode t)
;; (semantic-load-enable-excessive-code-helpers)
;; (require 'semantic-ia)
;; (require 'semantic-gcc)
;; (defun my-semantic-hook ()
;;   (imenu-add-to-menubar "TAGS"))
;; (add-hook 'semantic-init-hooks 'my-semantic-hook)

;; (require 'semanticdb-global)
;; (semanticdb-enable-gnu-global-databases 'c-mode)
;; (semanticdb-enable-gnu-global-databases 'c++-mode)

;; ;(semantic-load-enable-primary-exuberent-ctags-support)

;; (defun my-c-mode-cedet-hook ()
;;   (local-set-key "." 'semantic-complete-self-insert)
;;   (local-set-key ">" 'semantic-complete-self-insert))
;; (add-hook 'c-mode-common-hook 'my-c-mode-cedet-hook)

;; Qt
;; (setq qt4-base-dir "/usr/local/Trolltech/Qt-4.8.0/include/")
;; (semantic-add-system-include qt4-base-dir 'c++-mode)
;; (add-to-list 'auto-mode-alist (cons qt4-base-dir 'c++-mode))
;; (semantic-add-system-include qt4-base-dir 'c-mode)
;; (add-to-list 'auto-mode-alist (cons qt4-base-dir 'c-mode))
;; (add-to-list 'semantic-lex-c-preprocessor-symbol-file (concat qt4-base-dir "/Qt/qconfig.h"))
;; (add-to-list 'semantic-lex-c-preprocessor-symbol-file (concat qt4-base-dir "/Qt/qconfig-dist.h"))
;; (add-to-list 'semantic-lex-c-preprocessor-symbol-file (concat qt4-base-dir "/Qt/qglobal.h"))


;;==================================================================================
;; Boost
;; (semantic-add-system-include "/opt/local/include/boost" 'c++-mode)
;; (semantic-add-system-include "/opt/local/include/boost" 'c-mode)

;; ==================================================================================
;; Openrave


;; ==================================================================================
;; Doxyemacs
(require 'doxymacs)
(add-hook 'c-mode-common-hook 'doxymacs-mode)
(defun my-doxymacs-font-lock-hook ()
  (if (or (eq major-mode 'c-mode) (eq major-mode 'c++-mode))
      (doxymacs-font-lock)))
(add-hook 'font-lock-mode-hook 'my-doxymacs-font-lock-hook)

(defun my-javadoc-return () 
  "Advanced C-m for Javadoc multiline comments.   
Inserts `*' at the beggining of the new line if 
unless return was pressed outside the comment"
  (interactive)
  (setq last (point))
  (setq is-inside
	(if (search-backward "*/" nil t)
	    ;; there are some comment endings - search forward
	    (if (search-forward "/*" last t)
		't
	      'nil)
	  ;; it's the only comment - search backward
	  (goto-char last)
	  (if (search-backward "/*" nil t)
	      't
	    'nil
	    )
	  )
	)
  ;; go to last char position
  (goto-char last)
  ;; the point is inside some comment, insert `*'
  (if is-inside
      (progn 
	(insert "\n*")
	(indent-for-tab-command))
    ;; else insert only new-line
    (insert "\n")))
(add-hook 'c++-mode-hook (lambda () 
			   (local-set-key "\r" 'my-javadoc-return)))
(add-hook 'c-mode-hook (lambda () 
			   (local-set-key "\r" 'my-javadoc-return)))


;; Jemdoc mode
(load-library "jemdoc")
(setq auto-mode-alist
      (cons '("\\.jemdoc$" . jemdoc-mode) auto-mode-alist))


;; python mode
(load-library "python-mode")
(setq auto-mode-alist
      (cons '("\\.py$" . python-mode) auto-mode-alist))
