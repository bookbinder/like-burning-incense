#lang racket

(define (get-psalm-score-files)
  (let* ([dir "/home/ryan/scores/like-burning-incense/psalms/"]
         [files (directory-list (string->path dir))])
    (for ([f (drop files 2)])
      (when (directory-exists? (string->path (format "~a~a" dir f)))
        (let* ([curfile (string->path (format "~a~a/~a.ily" dir f f))]
               [curstr (regexp-replace #rx"layout \\s*\n\\s*{"
                                       (file->string curfile)
                                       "layout {\n        indent = 0.5\\\\in")])
          ;; (display-to-file curstr curfile #:exists 'replace)
          ;; (when (regexp-match "staff-size" curstr)
          ;;   (println curfile))
          (unless (regexp-match "indent = 0.5" (file->string curfile))
            (display-to-file curstr curfile #:exists 'replace))
          )))))

(get-psalm-score-files)
