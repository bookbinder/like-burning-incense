\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "1_Sam_2_1-10"
psalmtone = "22"
psalmtonestruct = "43"
keysig = \key f \minor
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    My heart leaps up with joy to the Lord, \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 }
    for he hum -- bles on -- ly to ex -- alt us.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    r8 c8 c[ des] c c bes \bar "" ees[ f] ees f \bar "" aes4( g)
    \hideNotes aes16 \unHideNotes %so that I can align the * better
    g8 aes \bar "" f4 \allowBreak ees8 f f ees des \bar "" des[ c] c4 \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    s2 s4. ees2~ ees2. s16 des4. bes2~ bes4 aes4
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    ees4 f\breve*5/16 aes2 bes2.~ s16
    bes4. f2~ f2
}
bassNotesAnt = \relative c {
    \keysig
    \global
    aes4 des\breve*5/16 c2 ees2. s16
    bes4. des2 f,
}
