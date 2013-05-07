;; add load path and subdirectories path
(let ((default-directory "~/.emacs.d/mode"))
      (normal-top-level-add-subdirs-to-load-path))

;; turn off startup-message
(setq inhibit-startup-message t)

(when window-system
  ;; load irblack theme path
  (add-to-list 'custom-theme-load-path "~/.emacs.d/mode/irblack-theme")
  (load-theme 'ir-black t))

;; let font size bigger
(set-default-font "Inconsolata-18")

;; set line number enabled
(global-linum-mode 1)

;; set auto save mode disabled
(auto-save-mode nil)

;; set no backup file
(setq make-backup-files nil)

;disable backup
(setq backup-inhibited t)

;disable auto save
(setq auto-save-default nil)

;; set tool bar disabled
(tool-bar-mode -1)

;; pair mode eg: () {} '' ""
(electric-pair-mode t)

;; parens highlight
(show-paren-mode 1)

;; make tab indent chenge to space
(setq-default tab-width 4)
(setq-default indent-tabs-mode nil)
(setq c-default-style "linux")

(require 'powerline)
(powerline-center-theme)

;; config cursor type bar
(setq-default cursor-type 'bar)

;; config default major mode not fundamental mode
(setq default-major-mode 'text-mode)

;; load php mode
(require 'php-mode)

;; load web mode
(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))

;; load yasnippet mode
(require 'yasnippet)
(yas-global-mode 1)

;; load ido mode
(ido-mode t)

;; let org mode startup indented
(setq org-startup-indented t)

;; disabled console blink
(setq ring-bell-function (lambda ()  t))

(load "~/.emacs.d/mode/ido-goto-symbol.el/ido-goto-symbol.el")
