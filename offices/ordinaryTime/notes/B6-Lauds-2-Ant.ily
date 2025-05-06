\version "2.20.0"
%% include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "Hab_3_2-4,_13a,_15-19"
psalmtone = "20"
psalmtonestruct = "42"
keysig = \key f \minor
frompitch = a
topitch = aes

text = \lyricmode {
    \set includeGraceNotes = ##t
    Ev -- en in your an -- ger, Lord,   \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    you will re -- mem -- ber com -- pas -- sion.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    c8 des c bes \bar "" ees[ f] aes \bar "" aes4( g)
    \hideNotes g16 \unHideNotes %so that I can align the * better
    g8 aes g \bar "" f4 ees8 des \bar "" des[ c] c4  \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    s2 ees4.~ ees\breve*7/16 s16
    des4 bes~ bes aes
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    ees2 aes4. bes\breve*7/16~ s16
    bes4 f~ f2
}
bassNotesAnt = \relative c {
    \keysig
    \global
    aes2 c4. ees\breve*7/16 s16
    bes2 f
}
