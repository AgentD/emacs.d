;; Disabled *Completions* Buffer
(add-hook 'minibuffer-exit-hook
          '(lambda ()
             (let ((buffer "*Completions*"))
              (and (get-buffer buffer)
                    (kill-buffer buffer)))))
