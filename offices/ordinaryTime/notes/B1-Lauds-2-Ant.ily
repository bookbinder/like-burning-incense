\version "2.20.0"
%% include "../../../lbi_defs.ily"
    
keysig = \key ges \major
antiphon = "2"
psalmnum = "Dan_3_52-57"
psalmtone = "37"
psalmtonestruct = "33"
frompitch = a
topitch = aes

text = \lyricmode {
    \set includeGraceNotes = ##t
    Let us sing a hymn of praise \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 }
    to our God, al -- le -- lu -- ia.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    des8 des ges[ f] ges ees[ f] ges aes[( ces bes] aes4) \bar ""
    \noBreak \hideNotes aes16 \unHideNotes
    aes8 \allowBreak aes \allowBreak ges[ ees] \bar "'" \allowBreak f \allowBreak ees \allowBreak ees[ des] \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    des4~ des2. ees\breve*5/16 s16 des4 bes ces aes2
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    aes4 ges2.~ ges\breve*5/16 s16 f4 ges4~ ges~ ges f
}
bassNotesAnt = \relative f {
    \keysig
    \global
    f4 des2. ces\breve*5/16 s16 des4 ees ces des2
}
