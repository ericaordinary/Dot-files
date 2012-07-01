;; -*- Mode: Emacs-Lisp -*-

(setq gtags-global-command "/opt/local/bin/global")

(add-to-list 'load-path "~/.emacs.d/")

;; Load custom settings
(setq custom-file "~/.emacs.d/settings.el")
(load custom-file)

(if (file-exists-p "~/.emacs.d/el-get/el-get")
    (add-to-list 'load-path "~/.emacs.d/el-get/el-get"))
(unless (require 'el-get nil t)
  (url-retrieve
   "https://github.com/dimitri/el-get/raw/master/el-get-install.el"
   (lambda (s)
     (end-of-buffer)
     (eval-print-last-sexp))))

(setq el-get-sources

      '((:name color-theme-tangotango
	       :type git
	       :depends (color-theme)
	       :features color-theme-tangotango
	       :url "git://github.com/russell/color-theme-tangotango.git"
	       :post-init (lambda ()
			    (color-theme-tangotango)))
				(:name drupal-mode
	       :type git
	       :features drupal-mode
	       :url "git://github.com/arnested/drupal-mode.git")

	(:name project-root
	       :type git
	       :url "https://github.com/emacsmirror/project-root.git"
	       :features project-root)

	(:name popup
	       :type git
	       :url "https://github.com/m2ym/popup-el.git")

	(:name popup-kill-ring
	       :type emacswiki
	       :depends (popup pos-tip)
	       :features popup-kill-ring)))

(setq my-packages
      (append '(color-theme color-theme-tangotango nxhtml
      autopair drupal-mode project-root popup-kill-ring
      js2-mode magit)))

(el-get nil my-packages)


(setq indent-tabs-mode nil)

;; scroll one line at a time (less "jumpy" than defaults)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1))) ;; one line at a time
(setq mouse-wheel-progressive-speed nil) ;; don't accelerate scrolling
(setq mouse-wheel-follow-mouse 't) ;; scroll window under mouse
(setq scroll-step 1) ;; keyboard scroll one line at a time

;; gtags
(require 'gtags)

;; SMEX
(add-to-list 'load-path "~/.emacs.d/smex/")
(require 'smex)
(smex-initialize)

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.


(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

;; Project root
(setq project-roots
      `(("Dupal project"
				 :root-contains-files ("index.php" "cron.php" "install.php")
	 )))

;; IDO Mode
(require 'ido)
(ido-mode)
(setq ido-everywhere t)
(setq ido-save-directory-list-file "~/.emacs.d/.ido.last")
(setq ido-enable-flex-matching t) ;; enable fuzzy matching

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
(require 'magit)

;; browse kill ring
(require 'browse-kill-ring)

;; popup kill ring
(require 'popup-kill-ring)
(global-set-key "\M-y" 'popup-kill-ring)

(setq default-tab-width 2);

;; enable override selection (select text with the mouse and type replacement text)
(delete-selection-mode t)
;; indent on new line
(define-key global-map (kbd "RET") 'newline-and-indent)

;; nxml modes

(setq auto-mode-alist (cons '("\\.module$" . php-mode) auto-mode-alist))

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

;; Marmalade
;; (require 'package)
;; (add-to-list 'package-archives
;;              '("marmalade" . "http://marmalade-repo.org/packages/"))
;; (package-initialize)
