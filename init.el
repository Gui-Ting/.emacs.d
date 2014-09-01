(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))

(add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
(setq el-get-user-package-directory "~/.emacs.d/el-get-init-files/")

(setq packages
      (append
       '(el-get 
         smex
         ;;helm-tools
         helm helm-dash
         ;;auto-complete 
         auto-complete  plsense
         ;;javascript-settings
         js2-mode skewer-mode ac-js2
         ;;themes
         moe-theme powerline
         paredit 
         pde
         ;;dired-packages
         dired+ dired-toggle-sudo
         window-numbering
         ;;editing-settings
         undo-tree
         essyenshine 
         )
       (mapcar 'el-get-source-name el-get-sources)))
      (el-get 'sync packages)

;; tab and indentation
(setq tab-width 4)
(setq-default indent-tabs-mode nil)
;; keybindings
(define-key global-map (kbd "RET") 'newline-and-indent)

;;javascript settings
(add-to-list 'auto-mode-alist '("\\.js$" . js-mode))

;;w3m XDD
(require 'w3m-load)

(message "All Done!")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (moe-dark)))
 '(custom-safe-themes (quote ("1d36de6b18a8b02071a2751c8f4f3baa26dc7303f327cd3bcf1d3a2b12b7f1e1" default))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
