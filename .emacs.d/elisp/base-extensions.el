(use-package company
  :config
  (add-hook 'after-init-hook 'global-company-mode))
(use-package expand-region
  :bind
  ("M-s" . er/expand-region))

(use-package counsel
  :bind
  ("M-x" . counsel-M-x)
  ("C-x C-m" . counsel-M-x)
  ("C-x C-f" . counsel-find-file)
  ("C-x c k" . counsel-yank-pop))

(use-package lsp-mode
  :defer t)

(use-package counsel-projectile)

(use-package ivy
  :ensure t
  :bind
  ("C-s" . swiper)
  :config
  (ivy-mode 1)
  (setq ivy-use-virtual-buffers nil))

(use-package magit
  :config
  (setq magit-completing-read-function 'ivy-completing-read))

(use-package ranger
  :config
  (ranger-override-dired-mode t))

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
(use-package olivetti
  :defer t
  :hook ((prog-mode . olivetti-mode)
         (org-mode . olivetti-mode))
  :custom (olivetti-body-width 80))
(use-package yaml-mode
  :defer t)
(provide 'base-extensions)
