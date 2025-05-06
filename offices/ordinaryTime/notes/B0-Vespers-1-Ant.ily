\version "2.20.0"
%% include "../../../lbi_defs.ily"

antiphon = "1"
psalmnum = "Ps_119_105-112_(XIV_Nun)"
psalmtone = "48"
psalmtonestruct = "43"
keysig = \key aes \major
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Your word, O Lord, \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } 
    is the lan -- tern to light our way,
    al -- le -- lu -- ia.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    r8 aes8 g aes f[( ees] des4) \bar ""
    \hideNotes f16 \unHideNotes   %so that I can align the * better
    des8 ees \bar ""
    f ees des \bar ""
    \allowBreak aes'[ bes] \allowBreak aes8 \bar "" \allowBreak g[ aes] \allowBreak f \allowBreak ees \bar "" \allowBreak f[ ees des]
    \bar "" des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    ees2 des2.~ s16 des4. ees4. des2 bes4. aes4
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    aes2~ aes4 f4 s16 bes4~ bes4. aes4.~ aes2 ges4. f4
}
bassNotesAnt = \relative c {
    \keysig
    \global
    c2 des2. s16 bes4. c4. des2~ des4.~ des4
}
