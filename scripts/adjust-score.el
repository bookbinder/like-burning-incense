;;; adjust-score.el ---                              -*- lexical-binding: t; -*-

(defun my-uncomment-region (L)
  "Uncomment region represented by cons L"
  (replace-regexp-in-region "^\s*%%\s*" "" (car L) (cdr L)))

(defun find-region (num)
  "Find the beginning and end of the region denoted by string NUM"
  (save-excursion
    (let ((a (progn (goto-char 1)
                    (search-forward (concat "%%%% Begin Ant" num) nil t)
                    (next-line)
                    (beginning-of-line)
                    (point)))
          (b (progn (goto-char 1)
                    (search-forward (concat "%%%% End Ant" num) nil t)
                    (previous-line)
                    (end-of-line)
                    (point))))
      (cons a b))))

;; (find-region "Ben")
;; (my-uncomment-region (find-region "1"))

;; %%%% Begin Ant1
;; %% \input{~/scores/like-burning-incense/psalms/ps1/vars.tex}
;; %% \subsubsection{Antiphon 1}
;; %% \noindent\lilypondfile[line-width=3.73in]{A4-Lauds-1-Ant-Cantor.ly}
;; %% \subsection{\psalmtitle}
;; %% \subsubsection{\subhead}
;; %% \Desc{\descA}{\descB}
;; %% \input{~/scores/like-burning-incense/psalms/ps1/toneStruc1/ps1.tex}
;; %% \subsubsection{Antiphon}
;; %% \lilypondfile[line-width=3.73in]{A4-Lauds-1-Ant-Cantor.ly}
;; %%%% End Ant1

(print (elt argv 0))
