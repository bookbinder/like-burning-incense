(let ((cur (match-data (re-search-forward "buffer"))))
  (list (car cur) (cadr cur)))

(defun allowBreak (a b)
  (interactive "r")
  (let ((s (buffer-substring-no-properties a b)))
    (delete-region a b)
    (insert (make-list s 0 0 '() 0))))

(defun make-list (s beg cur acc ties)
  (let* ((ncur (+ 1 cur))
         (s (replace-regexp-in-string "\n" " " (string-trim s)))
         (s (replace-regexp-in-string "\s*\\\\bar\s*" "@@" s))
         (s (replace-regexp-in-string "\s+" " " s))
         (s (replace-regexp-in-string "\\allowBreak " "" s)))
    (cond ((= cur (length s))
           (replace-regexp-in-string
            "@@" " \\\\bar "
            (string-join
             (reverse (cons (concat "\\allowBreak " (substring s beg cur)) acc))
             "\n")))
          ((string= (substring s cur (+ 1 cur)) " ")
           (if (> ties 0)
               (make-list s beg (+ 1 cur) acc ties)
             (make-list s
                        (+ 1 cur)
                        (+ 1 cur)
                        (cons (concat "\\allowBreak "
                                      (substring s beg cur))
                              acc)
                        ties)))
          ((string= (substring s cur (+ 1 cur)) "(")
           (make-list s beg (+ 1 cur) acc (+ 1 ties)))
          ((string= (substring s cur (+ 1 cur)) "[")
           (make-list s beg (+ 1 cur) acc (+ 1 ties)))
          ((string= (substring s cur (+ 1 cur)) ")")
           (make-list s beg (+ 1 cur) acc (- ties 1)))
          ((string= (substring s cur (+ 1 cur)) "]")
           (make-list s beg (+ 1 cur) acc (- ties 1)))
          (t (make-list s beg (+ 1 cur) acc ties)))))

