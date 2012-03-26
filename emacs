;; -*- Mode: Emacs-Lisp -*-
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(browse-kill-ring-highlight-current-entry t)
 '(css-indent-offset 2)
 '(custom-enabled-themes (quote (wombat)))
 '(dired-use-ls-dired nil)
 '(global-linum-mode t)
 '(inhibit-startup-buffer-menu nil)
 '(inhibit-startup-screen t)
 '(initial-buffer-choice "~/Sites/")
 '(js-indent-level 2)
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(add-to-list 'load-path "~/.emacs.d/")

(setq indent-tabs-mode nil)

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time


;; SMEX
(add-to-list 'load-path "~/.emacs.d/smex/")
(require 'smex)
(smex-initialize)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.


(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)


;; IDO Mode
(require 'ido)
(ido-mode)
(setq ido-everywhere t)
(setq ido-save-directory-list-file "~/.emacs.d/.ido.last")
(setq ido-enable-flex-matching t) ;; enable fuzzy matching


;; nxhtml-mode
(load "~/.emacs.d/nxhtml/autostart")


;; js2-mode
(add-to-list 'load-path "~/.emacs.d/js2-mode")
(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js$" . js2-mode))

;; autopair mode
(require 'autopair)
(autopair-global-mode) ;; enable autopair in all buffers_ 

;; auto-complete
(add-to-list 'load-path "~/.emacs.d/auto-complete")    ; This may not be appeared if you have already added.
(require 'auto-complete)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete/dict")
(require 'auto-complete-config)
(ac-config-default)

;; magit
(add-to-list 'load-path "~/.emacs.d/magit")
(require 'magit)

;; browse kill ring
(require 'browse-kill-ring)

(setq default-tab-width 2);

;; enable override selection (select text with the mouse and type replacement text)
(delete-selection-mode t)
;; indent on new line
(define-key global-map (kbd "RET") 'newline-and-indent)

;; nxml modes

(setq auto-mode-alist (cons '("||.module$" . php-mode) auto-mode-alist))

; TRAMP
(setq password-cache-expiry 1000)
(set-default 'tramp-default-proxies-alist '())
(add-to-list 'tramp-default-proxies-alist
	     '(nil "\\`root\\'" "/ssh:%h:"))
(add-to-list 'tramp-default-proxies-alist
	     '("\\.nectar\\.org\\.au" nil nil))
(add-to-list 'tramp-default-proxies-alist
             '((regexp-quote (system-name)) nil nil))
(add-to-list 'tramp-default-proxies-alist
             '((regexp-quote "localhost") nil nil))

;; Sudo
(defun sudo-edit-current-file ()
  (interactive)
  (find-alternate-file
   (concat "/sudo:root@localhost:"
	   (buffer-file-name (current-buffer)))))
