(defun yank-to-clipboard ()
  "Use ANSI OSC 52 escape sequence to attempt clipboard copy"
  (interactive)
  (shell-command (format "wl-copy \"%s\""
                       (encode-coding-string (substring-no-properties
                                              (nth 0 kill-ring))
                                             'utf-8))))
  ;(send-string-to-terminal
   ;(format "\033]52;c;%s\a"
           ;(base64-encode-string
            ;(encode-coding-string
             ;(substring-no-properties
              ;(nth 0 kill-ring)) 'utf-8) t))))

(provide 'base-functions)
