;;; emacs-helper-functions.el ---                    -*- lexical-binding: t; -*-

(defun move-point-ily ()
  "Move cursor to where lyrics are entered when visiting */notes/*ily file"
  (when (string-match "offices/.*/notes/.*ily$" (buffer-file-name))
    (goto-char 1)
    (goto-char (search-forward "includeGraceNotes"))
    (next-line)
    (beginning-of-line)
    (forward-char 2)))

(add-hook 'find-file-hook 'move-point-ily)

(defun unpoint-first-lines ()
  "Unpoint all first lines (cantor)."
  (interactive)
  (save-excursion
   (goto-char (point-min))
   (replace-regexp "\\(.*\\)\\(\\\\pointupl?{\\\\?\\)\\(.\\)}\\(.*\\\\Med\\)" "\\1\\3\\4")))

(defun unpoint-second-lines ()
  "Unpoint all second lines (cantor)."
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (replace-regexp "\\(\\\\Med\\\\\\\\\s*\n.*\\)\\(\\\\pointupl?{\\\\?\\)\\(.\\)}\\(.*\\)" "\\1\\3\\4")))

(defun del-second-quot ()
  "For each line, if it contains at least 2 quotation marks, ask if you want
to delete the second one."
  (interactive)
  (save-excursion
    (goto-char (point-min))
    (query-replace-regexp "\\(\\s\\\\ll \".*?\\)\"" "\\1")))

(defun psalm-info ()
  "If there's a string in the current file starting with `psalmnum =` then
show the directory contents of that psalm number."
  (interactive)
  (let ((psalm (save-excursion
                 (goto-char 1)
                 (search-forward-regexp "psalmnum = \"\\(.*\\)\"")
                 (match-string-no-properties 1))))
    (async-shell-command
     (concat "tree -h ~/scores/like-burning-incense/psalms/" psalm))))

(defalias 'make-verse-patverse
   (kmacro "M-< \\ <backspace> M-: ( e l e c t r i c - p a i r - m o d e SPC 0 <return> \\ F i r s t L e t t e r { C-f } C-a <return> C-p \\ b e g i n v <backspace> { v e r s e } <return> \\ b e g i n { p a t v b e <backspace> <backspace> e r s e } <return> \\ i n d e n t p a t t e r n { } M-> \\ e n d { p a t v e r s e } <return> \\ e n d { v e r s e } <tab> M-< C-n C-n C-n C-b C-b"))


(defalias 'clean-pointup
   (kmacro "M-: e l <backspace> <backspace> ( e l e c t r i c - p a i r - m o d e SPC 0 C-e <return> M-< M-x r e p l a c e s t r i n g <backspace> <backspace> <backspace> <backspace> <backspace> <backspace> - s t r i n g <return> { I } <return> { I I } <return> M-< M-x r e p l a c e - s t r i n g <return> { i } <return> { i \\ <backspace> <backspace> \\ i } <return> M-< M-x r e p l a c e - s t r i n g <return> { A } <backspace> <backspace> <backspace> p { A } <return> p l { A } <return> M-< M-x r e p l a c e - s t r i n g <return> { I I } <return> { I } <return> M-<"))


(defalias 'pointup
   (kmacro "M-: ( e l e c t r i c - p a i r - m o d e SPC 0 <return> \\ p o i n t u p { C-f } C-n M-b M-b"))

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Insert \allowBreak in the right places in the soprano of the ily file ;;;
(defun allowBreak (a b)
  (interactive "r")
  (let ((s (buffer-substring-no-properties a b)))
    (delete-region a b)
    (insert (rc-make-list s 0 0 '() 0))
    (activate-mark)
    (indent-for-tab-command)
    (deactivate-mark)
    (beginning-of-line)))

(defun rc-make-list (s beg cur acc ties)
  (let* ((ncur (+ 1 cur))
         (s (replace-regexp-in-string "\n" " " (string-trim s)))
         (s (replace-regexp-in-string "\s*\\\\bar\s*" "@@" s))
         (s (replace-regexp-in-string "\s+" " " s))
         (s (replace-regexp-in-string "\\\\allowBreak " "" s)))
    (cond ((= cur (length s))
           (replace-regexp-in-string
            "@@" " \\\\bar "
            (string-join
             (reverse (cons (concat "\\allowBreak " (substring s beg cur)) acc))
             "\n")))
          ((string= (substring s cur (+ 1 cur)) " ")
           (if (> ties 0)
               (rc-make-list s beg (+ 1 cur) acc ties)
             (rc-make-list s
                        (+ 1 cur)
                        (+ 1 cur)
                        (cons (concat "\\allowBreak "
                                      (substring s beg cur))
                              acc)
                        ties)))
          ((string= (substring s cur (+ 1 cur)) "(")
           (rc-make-list s beg (+ 1 cur) acc (+ 1 ties)))
          ((string= (substring s cur (+ 1 cur)) "[")
           (rc-make-list s beg (+ 1 cur) acc (+ 1 ties)))
          ((string= (substring s cur (+ 1 cur)) ")")
           (rc-make-list s beg (+ 1 cur) acc (- ties 1)))
          ((string= (substring s cur (+ 1 cur)) "]")
           (rc-make-list s beg (+ 1 cur) acc (- ties 1)))
          (t (rc-make-list s beg (+ 1 cur) acc ties)))))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;; better than above?
(defun put-break (a b)
  (interactive "r")
  (let* ((ties 0)
         (old (buffer-substring-no-properties a b))
         (txt (with-temp-buffer
                (insert old)
                (goto-char (point-min))
                (while (not (eobp))
                  (let ((n (string (char-after)))
                        (p (if (= (point) 1) " " (string (char-before)))))
                    (cond ((string-search n "([")
                           (setq ties (1+ ties)))
                          ((string-search n ")]")
                           (setq ties (1- ties)))
                          ((and (= 0 ties)
                                (string-search p " \n\t")
                                (string-search n " \\\"\n\t"))
                           (insert "\n\\allowBreak ")))
                    (forward-char)))
                (buffer-string))))
    (kill-region a b)
    (insert txt)))
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(provide 'emacs-helper-functions)
