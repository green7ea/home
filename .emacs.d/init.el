;;; init.el --- -*- lexical-binding: t; -*-

(add-to-list 'load-path (concat user-emacs-directory "elisp"))

(require 'base)
(require 'base-theme)
(require 'base-extensions)
(require 'base-functions)
(require 'base-global-keys)

(require 'lang-rust)
(require 'lang-typescript)
(require 'lang-org)

(put 'downcase-region 'disabled nil)
(put 'upcase-region 'disabled nil)
