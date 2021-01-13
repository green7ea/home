(use-package rustic
  :bind (:map rustic-mode-map
              ("M-RET" . lsp-execute-code-action)
              ([f1] . lsp-describe-thing-at-point)
              ([f2] . lsp-find-references)
              ([f5] . cargo-process-check)
              ("C-<f5>" . cargo-process-build)
              ([f6] . lsp-format-buffer))

  :mode
  ("\\.rs$" . rustic-mode))

(provide 'lang-rust)
