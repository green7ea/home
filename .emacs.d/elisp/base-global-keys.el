(global-set-key [(f5)] 'recompile)
(global-set-key [(C-f5)] 'compile)
(global-set-key [(f6)] 'cpp-format-buffer)
(global-set-key [(f7)] 'deadgrep)
(global-set-key [(f8)] 'counsel-projectile-find-file)
(global-set-key [(f9)] 'magit-status)
(global-set-key [(f10)] 'undo-only)
(global-set-key [(f11)] 'yank-to-clipboard)
(global-set-key [(f12)] 'kill-this-buffer)
(global-set-key (kbd "M-<f12>") 'open-index)

(defun open-index ()
  (interactive)
  (find-file "~/roam/index.org"))

; Using bind-key* here makes sure that these bindings cannot be
; overwritten by other modes.
(use-package bind-key
  :config
  (bind-key* (kbd "M-n") 'left-char)
  (bind-key* (kbd "M-e") 'next-line)
  (bind-key* (kbd "M-i") 'previous-line)
  (bind-key* (kbd "M-o") 'right-char)

  (bind-key* (kbd "C-M-n") 'backward-word)
  (bind-key* (kbd "C-M-e") 'forward-paragraph)
  (bind-key* (kbd "C-M-i") 'backward-paragraph)
  (bind-key* (kbd "C-M-o") 'forward-word)

  (bind-key* (kbd "M-<left>") 'shrink-window-horizontally)
  (bind-key* (kbd "M-<right>") 'enlarge-window-horizontally)
  (bind-key* (kbd "M-<down>") 'shrink-window)
  (bind-key* (kbd "M-<up>") 'enlarge-window))

(provide 'base-global-keys)
