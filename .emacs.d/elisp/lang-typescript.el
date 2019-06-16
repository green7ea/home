(use-package tide
  :defer t
  :mode
  ("\\.ts$" . typescript-mode)
  ("\\.tsx$" . typescript-mode)
  :hook ((typescript-mode . tide-setup)
         (typescript-mode . flycheck-mode)
         (typescript-mode . company-mode))
  :bind (:map typescript-mode-map
              ("M-RET" . tide-fix)
              ([f1] . tide-documentation-at-point)
              ([f2] . tide-references)
              ([f5] . tide-project-errors)
              ([f6] . tide-format))
  :config
  (setq typescript-indent-level 2))

(provide 'lang-typescript)
