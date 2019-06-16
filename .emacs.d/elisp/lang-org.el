(defvar-local custom-head
  (with-temp-buffer
    (insert "<style type=\"text/css\">\n")
    (insert-file-contents "~/.emacs.d/css/org.css")
    (goto-char (point-max))
    (insert "</style>\n")
    (buffer-string)))

(with-temp-buffer "*manu*"
                  (princ custom-head))

(use-package org
  :config
  (setq org-directory "~/roam"
        org-default-notes-file (concat org-directory "/roam/todo.org")
        org-html-head custom-head
        org-html-head-include-default-style nil)
  :bind (:map org-mode-map
              ("C-c l" . org-store-link)
              ("C-c a" . org-agenda)
              ([f5] . org-html-export-to-html)))

(use-package org-bullets
  :config
  (setq org-hide-leading-stars t)
  (add-hook 'org-mode-hook
            (lambda ()
              (org-bullets-mode t))))

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
              (("C-c n I" . org-roam-insert-immediate))))

(provide 'lang-org)
