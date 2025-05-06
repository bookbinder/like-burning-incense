\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "3"
psalmnum = "Ps_81"
psalmtone = "48"
psalmtonestruct = "43"
keysig = \key f \minor
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Ring out your joy  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } to God our strength.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    aes4 g8 aes \bar "" f4( ees)
    \hideNotes ees16 \unHideNotes %so that I can align the * better
    ees8 \bar "" ees[ f] ees des4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    ees2 c\breve*5/16~ s16
    c4. aes4
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    aes2~ aes\breve*5/16 s16
    ees4. f4
}
bassNotesAnt = \relative c {
    \keysig
    \global
    c2 aes\breve*5/16~ s16
    aes4. des4
}
