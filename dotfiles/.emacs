(require 'cl)

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("elpy" . "http://jorgenschaefer.github.io/packages/"))
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
  (add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/")))

(defvar my-packages
  '(auto-complete
    tabbar
    tabbar-ruler
    paredit
    yasnippet
    highlight-indentation
    markdown-mode
    elpy
    web-mode
    stylus-mode
    jade-mode
    coffee-mode
    clojure-mode
    cider
    zenburn-theme
    solarized-theme))

(defun my-packages-installed-p ()
  (loop for p in my-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

(unless (my-packages-installed-p)
  (package-refresh-contents)
  (dolist (p my-packages)
    (when (not (package-installed-p p))
      (package-install p))))

;;--------------------------------------------------
;; - Custom

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes
   (quote
    ("a444b2e10bedc64e4c7f312a737271f9a2f2542c67caa13b04d525196562bf38" "3b819bba57a676edf6e4881bd38c777f96d1aa3b3b5bc21d8266fa5b0d0f1ebf" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "dd4db38519d2ad7eb9e2f30bc03fba61a7af49a185edfd44e020aa5345e3dca7" default))))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Inconsolata" :foundry "unknown" :slant normal :weight normal :height 110 :width normal)))))

;;--------------------------------------------------
;; - Themes

(require 'tabbar)
(require 'hl-line)
(defun set-custom-face-attributes
  (tabbar-selected-bg tabbar-selected-fg tabbar-unselected-bg tabbar-unselected-fg hl-line-bg)
  (set-face-attribute 'tabbar-selected nil
                      :background tabbar-selected-bg
                      :foreground tabbar-selected-fg)
  (set-face-attribute 'tabbar-unselected nil
                      :background tabbar-unselected-bg
                      :foreground tabbar-unselected-fg)
  (set-face-attribute 'hl-line nil
                      :background hl-line-bg))

(setq default-theme 'zenburn)
;; (setq default-theme 'solarized-dark)

(when (eq default-theme 'zenburn)
  (require 'zenburn-theme)
  (load-theme 'zenburn)
  (add-hook 'window-setup-hook
            (lambda ()
              (set-custom-face-attributes "#DCDCCC" "#3F3F3F" "#3F3F3F" "#DCDCCC" "gray27"))))

(when (eq default-theme 'solarized-dark)
  (require 'solarized)
  (load-theme 'solarized-dark)
  (add-hook 'window-setup-hook
            (lambda ()
              (set-custom-face-attributes "#DCDCCC" "#073642" "#073642" "#DCDCCC" "#073642"))))

;;--------------------------------------------------
;; - Functions

(defun my-tabbar-buffer-groups ()
  (list (cond ((string-equal "*" (substring (buffer-name) 0 1)) "emacs")
              ((eq major-mode 'dired-mode) "emacs")
              (t "user"))))

(defun my-beginning-of-line (arg)
  (interactive "^p")
  (setq arg (or arg 1))
  (when (/= arg 1)
    (let ((line-move-visual nil))
      (forward-line (1- arg))))
  (let ((orig-point (point)))
    (back-to-indentation)
    (when (= orig-point (point))
      (move-beginning-of-line 1))))

(defun my-buffer-menu-files-only (arg)
  (interactive "p")
  (split-window-below (+ -3 (* -1 (length (buffer-list)))))
  (other-window 1)
  (buffer-menu 'files-only))

(defun my-buffer-menu (arg)
  (interactive "p")
  (split-window-below (+ -3 (* -1 (length (buffer-list)))))
  (other-window 1)
  (buffer-menu))

(defun my-buffer-menu-1-window ()
  (interactive)
  (let ((target-buffer (Buffer-menu-buffer t))
        (buffer-menu-buffer (buffer-name)))
    (delete-window)
    (switch-to-buffer target-buffer)
    (kill-buffer buffer-menu-buffer)))

(defun duplicate-line ()
  (interactive)
  (move-beginning-of-line 1)
  (kill-line)
  (yank)
  (open-line 1)
  (next-line 1)
  (yank))

(defun global-set-keys (alist) nil
  (mapcar
   (lambda (a) nil
     (setcar a (read-kbd-macro (car a)))
     (apply 'global-set-key a))
   alist))

;;--------------------------------------------------
;; - Hooks

(defun my-sws-hooks ()
  (electric-indent-mode t)
  (setq indent-tabs-mode nil)
  (highlight-indentation-mode))

(add-hook 'elpy-mode-hook
          (lambda ()
            (my-sws-hooks)
            (setq python-indent 4)
            (setq tab-width 4)))

(add-hook 'coffee-mode-hook
          (lambda ()
            (my-sws-hooks)
            (setq coffee-tab-width 2)
            (setq tab-width 2)))

(add-hook 'jade-mode-hook
          (lambda ()
            (my-sws-hooks)
            (setq tab-width 2)))

(add-hook 'stylus-mode-hook
          (lambda ()
            (my-sws-hooks)
            (setq tab-width 2)))

;;--------------------------------------------------
;; - Modes

(elpy-enable)

(require 'auto-complete-config)
(ac-config-default)

(require 'whitespace)
(setq whitespace-action '(auto-cleanup))
(setq whitespace-style '(trailing space-before-tab indentation empty space-after-tab))
(global-whitespace-mode)

(delete-selection-mode 1)

(electric-indent-mode +1)
(electric-pair-mode +1)

(linum-mode t)
(global-linum-mode t)
(column-number-mode t)
(global-hl-line-mode t)

(setq tabbar-ruler-global-tabbar t)
(setq tabber-ruler-global-ruler t)
(require 'tabbar-ruler)
(setq tabbar-buffer-groups-function 'my-tabbar-buffer-groups)

(when (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(when (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(when (fboundp 'menu-bar-mode) (menu-bar-mode -1))

(define-key Buffer-menu-mode-map (kbd "RET") 'my-buffer-menu-1-window)
(define-key Buffer-menu-mode-map [mouse-2] 'my-buffer-menu-1-window)

;;(setq tramp-default-mode "ssh")

;;--------------------------------------------------
;; - Global Keybindings

(global-set-keys
 '(
   ("C-b" switch-to-buffer)
   ("C-l" my-buffer-menu-files-only)
   ("C-S-l" my-buffer-menu)
   ("C-o" find-file)
   ("C-f" occur)
   ("C-x m" make-directory)
   ("C-x -" comment-region)
   ("C-x _" uncomment-region)
   ("C-d" duplicate-line)
   ("C-<backspace>" backward-kill-word)
   ("C-<return>" newline-and-indent)
   ("M-<left>" tabbar-backward-tab)
   ("M-<right>" tabbar-forward-tab)
   ("M-l" linum-mode)
   ("M-S-<up>" windmove-up)
   ("M-S-<left>" windmove-left)
   ("M-S-<down>" windmove-down)
   ("M-S-<right>" windmove-right)
   ("C-a" my-beginning-of-line)
   ("<home>" my-beginning-of-line)
   ("<f5>" eval-region)
   ("C--" text-scale-decrease)
   ("C-=" text-scale-increase)
   ("M-m" eshell)))

(when window-system
  (global-set-keys
   '(
     ("C-z" undo)
     ("C-S-z" redo)
     ("C-v" yank))))

;;--------------------------------------------------
;; - Misc

(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)
(setq backup-directory-alist '(("." . "~/.emacs-backups")))

(kill-buffer "*scratch*")

(setq undo-strong-limit 1500000)
(setq undo-limit 1000000)

(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

(fset 'yes-or-no-p 'y-or-n-p)
(setq uniquify-buffer-name-style (quote forward))

(setq-default scroll-step 1)
(setq-default scroll-conservatively 1000)
(setq-default scroll-margin 5)
(setq-default scroll-preserve-screen-position 't)
