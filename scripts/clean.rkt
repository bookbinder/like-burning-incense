#lang racket

(define files
  (sequence->stream
   (in-directory "/home/ryan/scores/lbi/offices/advent/notes/")))

(define new-text
  "topitch = a


text = \\lyricmode {
    \\set includeGraceNotes = ##t
    \" * \"
}
sopNotesAnt = \\relative fis' {
    \\global	% will be populated by an include file
		% in the cantor/organ scores called lbi_defs
    \\keysig
    \\voiceOne

}
altoNotesAnt = \\relative d' {
    \\global
    \\keysig
    \\voiceTwo

}    
tenorNotesAnt = \\relative g {
    \\global
    \\keysig
    \\voiceOne

}
bassNotesAnt = \\relative c {
    \\global
    \\keysig
    \\voiceTwo

}")

(define (run)
  (for ([f files])
    (let ([orig (regexp-replace #rx"topitch.*"
                                (file->string f)
                                "")])
      (display-to-file (string-append orig new-text) f #:exists 'replace))))

(run)
