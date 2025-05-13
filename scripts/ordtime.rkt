;;; ordtime.el --- none                              -*- lexical-binding: t; -*-

(defun get-info ()
  (let* ((day (read-string "Enter the day (e.g. A0): "))
         (office (read-string "Enter the office (e.g. Lauds): "))
         (psalm1 (let ((s (with-temp-buffer
                            (insert-file-contents (format "~/scores/like-burning-incense/offices/ordinaryTime/notes/%s-%s-1-Ant.ily" day office))
                            (goto-char 1)
                            (search-forward-regexp "psalmnum = \"\\(.*\\)\"")
                            (match-string-no-properties 1))))
                   s))
         (psalm2 (let ((s (with-temp-buffer
                            (insert-file-contents (format "~/scores/like-burning-incense/offices/ordinaryTime/notes/%s-%s-2-Ant.ily" day office))
                            (goto-char 1)
                            (search-forward-regexp "psalmnum = \"\\(.*\\)\"")
                            (match-string-no-properties 1))))
                   s))
         (psalm3 (let ((s (with-temp-buffer
                            (insert-file-contents (format "~/scores/like-burning-incense/offices/ordinaryTime/notes/%s-%s-3-Ant.ily" day office))
                            (goto-char 1)
                            (search-forward-regexp "psalmnum = \"\\(.*\\)\"")
                            (match-string-no-properties 1))))
                   s))
         (psalm4 (if (string-equal office "Lauds")
                     "Benedictus"
                   "Magnificat")))
    (list psalm1 psalm2 psalm3 psalm4)
    ))

(get-info)

(string-equal "a" "v")
