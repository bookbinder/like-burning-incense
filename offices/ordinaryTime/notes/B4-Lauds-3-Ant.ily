\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "3"
psalmnum = "Ps_97"
psalmtone = "37"
psalmtonestruct = "33"
keysig = \key ges \major
frompitch = a
topitch = aes

text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord is king, \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 }
    let the earth re -- joice.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    r8 des8 ges[ f] ges aes[( bes ces bes] aes4)
    \hideNotes aes16 \unHideNotes %so that I can align the * better
    ges8 ges f[ ges] ees des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    r8 \hideNotes des8~ \unHideNotes des4. ees2. s16
    bes4 ces4. aes4
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    ges4~ ges4.~ ges2.~ s16
    ges4~ ges4. f4
}
bassNotesAnt = \relative c {
    \keysig
    \global
    bes4~ bes4. ces2. s16 ees4 aes,4. des4
}
