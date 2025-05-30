#lang racket

(require db)
(define pgc (postgresql-connect
             #:user "ryan"
             #:database "offices"
             #:password "art"
             ))

(define (parse-ibrev-hymn s)
  "Create a hymn string for LaTeX. TODO refactor to accommodate multiple hymns."
  (let* ([s (regexp-match "HYMN</span><br /><br />(.*?)<br /><br /><span class=\"citazione\">(.*?)</span>" s)]
         [hymn (second s)]
         [citation (third s)]
         [hymn (string-replace hymn "<br /><br />" "@@")]
         [hymn (string-replace hymn "<br />" "\\\\\\\\\n")]
         [hymn (string-replace hymn "@@" "\n\n")]
         [hymn (string-trim
                    (with-output-to-string
                      (λ () (system (format "unescapehtml \"~a\"" hymn)))))]
         [citation (string-replace citation "<br />" "\n\n")]
         [citation (string-replace citation "<em>" "\\emph{")]
         [citation (string-replace citation "</em>" "}")]
         [citation (string-trim
                    (with-output-to-string
                      (λ () (system (format "unescapehtml \"~a\"" citation)))))]
         )
    (format "\\hymn\n\n\\begin{verse}\n~a\n\\end{verse}\n\n\\begin{hymnsource}\n~a\n\\end{hymnsource}"
            (string-replace
             hymn "<a href=#alternatehymn>Alternate Hymn</a>\n\n" "")
            citation)))

(define files
  (filter
   (lambda (p)
     (regexp-match? #rx"(.*-Lauds-Cantor.tex$)|(.*-Vespers-Cantor.tex$)" p))
   (directory-list
    (string->path
     "/home/ryan/scores/like-burning-incense/offices/ordinaryTime/"))))

(define curdir "/home/ryan/scores/like-burning-incense/offices/ordinaryTime/")

(for ([f files])
  (let* ([shortstem (string-split (path->string f) "-")]
         [cur-week (substring (first shortstem) 0 1)]
         [cur-day (substring (first shortstem) 1 2)]
         (cur-office (second shortstem))
         [hymnfile (string->path
                    (string-append
                     curdir
                     (string-join
                      (take (string-split (path->string f) "-") 2)
                      "-")
                     "-Hymn.tex"))]
         [hymntxt
          (parse-ibrev-hymn
           (query-value
            pgc
            "select cur_contents from ibrev_html where cur_week = $1 and cur_day = $2 and cur_office = $3"
            cur-week
            cur-day
            cur-office))])

    (display-to-file hymntxt hymnfile #:exists 'replace)

    ))


;; (parse-ibrev-hymn
;;  (query-value
;;   pgc
;;   "select cur_contents from ibrev_html where cur_week = $1 and cur_day = $2 and cur_office = $3"
;;   "A"
;;   "3"
;;   "Vespers"))



;; (for ([f files])
;;   (let* ([curdir
;;           "/home/ryan/scores/like-burning-incense/offices/sundaysOT/notes/"]
;;          [pardir
;;           "/home/ryan/scores/like-burning-incense/offices/sundaysOT/"]
;;          [day (first (string-split (path->string f) "-"))]
;;          [stem (string-join (take (string-split (path->string f) "-") 2) "-")]
;;          [filestr
;;           (file->string (string->path (string-append curdir (path->string f))))]
;;          [skelstr (file->string (string->path "/home/ryan/scores/like-burning-incense/skel/CantorSunOT.tex"))]
;;          [tonestruct
;;           (second (regexp-match "psalmtonestruct = \"(.*?)\"" filestr))]
;;          [cantortexfile
;;           (string->path (format "/home/ryan/scores/like-burning-incense/offices/sundaysOT/~a-Cantor.tex" stem))]
;;          [sunday-num (first (regexp-match #px"^\\d+" day))]
;;          [day-num (first (regexp-match #px"\\d$" day))]
;;          [cur-week (format "Sun~aOT" sunday-num)]
;;          [cur-day (format "~a" day-num)]
;;          [cur-office (second (string-split stem "-"))]
;;          [prayerfile
;;           (string->path (format "/home/ryan/scores/like-burning-incense/offices/sundaysOT/~a-Prayer.tex" stem))]
;;          [prayertxt
;;           (begin
;;             (displayln (format "Trying ~a-~a-~a" cur-week cur-day cur-office))
;;             (query-value
;;             pgc
;;             "select cur_contents from ibrev_html where cur_week = $1 and cur_day = $2 and cur_office = $3" cur-week cur-day cur-office))]
;;          [prayertxtparsed (parse-ibrev-prayer prayertxt)]
;;          )
    
;;     (when (regexp-match "Lauds" (path->string f))
;;       (set! skelstr (string-replace skelstr "Vespers" "Lauds"))
;;       (set! skelstr (string-replace skelstr "Magnificat" "Benedictus"))
;;       (set! skelstr (string-replace skelstr "Mag" "Ben")))
;;     (set! skelstr (string-replace skelstr "toneStruct" tonestruct))
;;     (set! skelstr (string-replace skelstr "2Sun0" day))
    
;;     (display-to-file prayertxtparsed prayerfile #:exists 'replace)
;;     (display-to-file skelstr cantortexfile #:exists 'replace)))



