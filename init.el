;; config files

;;------------------------------------------------------
;; 配置文件
;;-----------------------------------------------------
(require 'package)
(setq package-enable-at-startup nil)
(setq package-archives '(("gnu"   . "http://elpa.emacs-china.org/gnu/")
			 ("melpa" . "http://elpa.emacs-china.org/melpa/")
			 ("org" . "https://orgmode.org/elpa/"))
			 package-enable-at-startup nil
			 load-prefer-newer t)

(package-initialize)

;; Bootstrap `use-package'
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))


(eval-when-compile
  (require 'use-package))

(setq use-package-verbose t)
(setq use-package-always-ensure t)

;; org-babel-load name.org
;; 1. generate elisp script name.el
;; 2. load this file name.le
(org-babel-load-file "~/.emacs.d/conf.org")

