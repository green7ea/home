(use-package avy
  :bind
  ("C-c SPC" . avy-goto-char))

(use-package company
  :config
  (add-hook 'after-init-hook 'global-company-mode))

(use-package dashboard
  :config
  (dashboard-setup-startup-hook))

(use-package ediff
  :config
  (setq ediff-window-setup-function 'ediff-setup-windows-plain)
  (setq-default ediff-highlight-all-diffs 'nil)
  (setq ediff-diff-options "-w"))

(use-package expand-region
  :bind
  ("M-s" . er/expand-region))

(use-package flycheck)

(use-package counsel
  :bind
  ("M-x" . counsel-M-x)
  ("C-x C-m" . counsel-M-x)
  ("C-x C-f" . counsel-find-file)
  ("C-x c k" . counsel-yank-pop))

(use-package counsel-projectile
  :bind
  ("C-x v" . counsel-projectile)
  ("C-x c p" . counsel-projectile-ag)
  :config
  (counsel-projectile-on))

(use-package ivy
  :bind
  ("C-s" . swiper)
  ("C-x C-r" . ivy-resume)
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers nil)
  (define-key read-expression-map (kbd "C-r") 'counsel-expression-history))

(use-package hlinum
  :config
  (hlinum-activate))

(use-package linum
  :config
  (setq linum-format " %3d ")
  (global-linum-mode nil))

(use-package magit
  :config
  (setq magit-completing-read-function 'ivy-completing-read))

(use-package diff-hl)

(use-package magit-popup)

(use-package ranger
  :config
  (ranger-override-dired-mode t))

(use-package page-break-lines)

(use-package projectile
  :config
  (setq projectile-known-projects-file
        (expand-file-name "projectile-bookmarks.eld" temp-dir))

  (setq projectile-completion-system 'ivy)

  (projectile-global-mode))

(use-package recentf
  :config
  (setq recentf-save-file (recentf-expand-file-name "~/.emacs.d/private/cache/recentf"))
  (recentf-mode 1))

(use-package smartparens)

(use-package smex)

(use-package undo-tree
  :config
  ;; Remember undo history
  (setq
   undo-tree-auto-save-history nil
   undo-tree-history-directory-alist `(("." . ,(concat temp-dir "/undo/"))))
  (global-undo-tree-mode 1))

(use-package which-key
  :config (which-key-mode))

(use-package windmove
  :bind
  ("C-c n" . windmove-left)
  ("C-c e" . windmove-down)
  ("C-c i" . windmove-up)
  ("C-c o" . windmove-right))

(use-package deadgrep
  :defer t)

(use-package sudo-edit :defer t)

(use-package yasnippet
  :config (yas-global-mode 1))

(use-package olivetti
  :defer t
  :hook ((prog-mode . olivetti-mode))
  :custom (olivetti-body-width 80))

(use-package editorconfig
  :ensure t
  :config (editorconfig-mode 1))

(use-package yaml-mode
  :defer t)

;(use-package tree-sitter
;  :config
;  (global-tree-sitter-mode)
;  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))

(use-package tree-sitter-langs)

(provide 'base-extensions)
