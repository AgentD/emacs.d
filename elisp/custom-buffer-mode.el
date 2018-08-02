;; Forces the messages to 0, and kills the *Messages* buffer
;; thus disabling it on startup.
(setq-default message-log-max nil)
(kill-buffer "*Messages*")

;; Disabled *Completions* Buffer
(add-hook 'minibuffer-exit-hook
          '(lambda ()
             (let ((buffer "*Completions*"))
              (and (get-buffer buffer)
                    (kill-buffer buffer)))))
