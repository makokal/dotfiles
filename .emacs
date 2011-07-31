(custom-set-variables
 '(column-number-mode t)
 '(cua-mode t nil (cua-base))
 '(scroll-bar-mode nil)
 '(tool-bar-mode nil)
 '(show-paren-mode t)
 '(size-indication-mode t))
(custom-set-faces
 '(default ((t (:inherit nil :stipple nil :background "white" :foreground "black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 98 :width normal :foundry "unknown" :family "Liberation Mono")))))


;; =============================================================================================
;; ROS and Slime



;; =============================================================================================
;; OpenRAVE


;; =============================================================================================
;; Yasnippet
(add-to-list 'load-path
             "~/.emacs.d/plugins")
(require 'yasnippet-bundle)