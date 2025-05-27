#lang racket

(require db)
(define pgc (postgresql-connect
             #:user "ryan"
             #:database "offices"
             #:password "art"
             ))

(define (parse-ibrev-prayer s)
  (let* ([s (second (regexp-match "CONCLUDING PRAYER</span><br /><br />(.*?)<br /><br /><span class=\"capolettera_piccolo\">DISMISSAL" s))]
         [prayers (regexp-split "<br /><br /><span class=\"rubrica\">Or:</span><br /><br />" s)])
    (format "\\prayer\n\n\\setlength{\\leftmargini}{\\prayerleftmargini}\n\n~a\n\n\\setlength{\\leftmargini}{\\defleftmargini}"
            (string-join (map parse-ibrev-prayer-aux prayers) "\n\n{\\color{red}Or:}\n\n"))))

(define (parse-ibrev-prayer-aux s)
  "Create a concluding prayer string for LaTeX. Refactor to allow for alternate prayers. (split on `Or:`)"
  (let* ([s (string-replace s "<span class=\"rubrica\">&mdash;</span> "
                            "{\\color{red}---\\thinspace}")]
         [s (string-replace s "<br />" "\\\\\n")]
         )
    (format "\\begin{verse}\n~a\n\\end{verse}"
            s)))


(define files
  (filter
   (lambda (p)
     (regexp-match? #rx"\\.ily$" p))
   (directory-list
    (string->path
     "/home/ryan/scores/like-burning-incense/offices/sundaysOT/notes/"))))
 
(for ([f (take files 1)])
  (let* ([curdir
          "/home/ryan/scores/like-burning-incense/offices/sundaysOT/notes/"]
         [pardir
          "/home/ryan/scores/like-burning-incense/offices/sundaysOT/"]
         [day (first (string-split (path->string f) "-"))]
         [stem (string-join (take (string-split (path->string f) "-") 2) "-")]
         [filestr
          (file->string (string->path (string-append curdir (path->string f))))]
         [skelstr (file->string (string->path "/home/ryan/scores/like-burning-incense/skel/CantorSunOT.tex"))]
         [tonestruct
          (second (regexp-match "psalmtonestruct = \"(.*?)\"" filestr))]
         [cantortexfile
          (string->path (format "/home/ryan/scores/like-burning-incense/offices/sundaysOT/~a-Cantor.tex" stem))]
         [sunday-num (first (regexp-match #px"^\\d+" day))]
         [day-num (first (regexp-match #px"\\d$" day))]
         [cur-week (format "Sun~aOT" sunday-num)]
         [cur-day (format "~a" day-num)]
         [cur-office (second (string-split stem "-"))]
         [prayerfile
          (string->path (format "/home/ryan/scores/like-burning-incense/offices/sundaysOT/~a-Prayer.tex" stem))]
         [prayertxt
          (query-value
           pgc
           "select cur_contents from ibrev_html where cur_week = $1 and cur_day = $2 and cur_office = $3" cur-week cur-day cur-office)]
         [prayertxtparsed (parse-ibrev-prayer prayertxt)]
         )
    
    (when (regexp-match "Lauds" (path->string f))
      (set! skelstr (string-replace skelstr "Vespers" "Lauds"))
      (set! skelstr (string-replace skelstr "Magnificat" "Benedictus"))
      (set! skelstr (string-replace skelstr "Mag" "Ben")))
    (set! skelstr (string-replace skelstr "toneStruct" tonestruct))
    (set! skelstr (string-replace skelstr "2Sun0" day))
    
    (display-to-file prayertxtparsed prayerfile #:exists 'replace)
    (display-to-file skelstr cantortexfile #:exists 'replace)))



