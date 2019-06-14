(setq ibuffer-formats
      '((mark modified read-only " "
              (name 25 25 :left :elide) ;; default: 18
              " "
              (size 9 -1 :right)
              " "
              (mode 16 16 :left :elide)
              " " filename-and-process)
        (mark " "
              (name 16 -1)
              " " filename)))
