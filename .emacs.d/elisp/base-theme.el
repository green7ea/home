(use-package doom-themes
  :defer t
  :init (load-theme 'doom-one t)
  :custom
  (doom-one-brighter-comments t))

(use-package doom-modeline
      :ensure t
      :hook (after-init . doom-modeline-mode))

(add-to-list 'default-frame-alist '(font . "FiraCode 13" ))
(set-face-attribute 'default t :font "FiraCode 13" )

(provide 'base-theme)
