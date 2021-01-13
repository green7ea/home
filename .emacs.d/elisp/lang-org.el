(use-package org
  :config
  (setq org-directory "~/roam"
        org-default-notes-file (concat org-directory "/roam/todo.org")))

(use-package org-roam
      :ensure t
      :hook
      (after-init . org-roam-mode)
      :custom
      (org-roam-directory "/home/manu/roam/")
      (org-roam-capture-templates `(("d"
                                   "default"
                                   plain
                                   (function org-roam--capture-get-point)
                                   "%?"
                                   :file-name "${slug}"
                                   :head "#+title: ${title}\n"
                                   :unnarrowed t)))
      :bind (:map org-roam-mode-map
              (("C-c n l" . org-roam)
               ("C-c n f" . org-roam-find-file)
               ("C-c n g" . org-roam-graph))
              :map org-mode-map
              (("C-c n i" . org-roam-insert))
              (("C-c n I" . org-roam-insert-immediate))
              (("M-." . org-follow-at-point))))

(defun org-follow-at-point ()
    "Follow the link under the cursor leaving a marker behind"
    (interactive)
    ; Shadowing org-link-frame-setup allows us to open the link in the
    ; current buffer.
    (let ((org-link-frame-setup (cons (cons 'file 'find-file)
                                      org-link-frame-setup)))
      ; Allows us to pop the marker stack to back track.
      (xref-push-marker-stack)
      (org-open-at-point)))

(setq initial-buffer-choice "~/roam/index.org")

(provide 'lang-org)
