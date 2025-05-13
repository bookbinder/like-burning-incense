\version "2.20.0"
%% include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "Hab_3_2-4,_13a,_15-19"
psalmtone = "20"
psalmtonestruct = "42"
antKeysig = \key f \minor
frompitch = a
topitch = aes
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Ev -- en in your an -- ger, Lord,   
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    you will re -- mem -- ber com -- pas -- sion.
}

sopNotesAnt = \relative e' {
    c8 des c bes \bar "" ees[ f] aes \bar "" aes4( g)
    \hideNotes g16 \unHideNotes %so that I can align the * better
    \allowBreak g8
    \allowBreak aes
    \allowBreak g
    \allowBreak f4
    \allowBreak ees8
    \allowBreak des
    \allowBreak des[ c]
    \allowBreak c4 \bar "||"
}
altoNotesAnt = \relative c' {
    s2 ees4.~ ees\breve*7/16 s16
    des4 bes~ bes aes
}
tenorNotesAnt = \relative g {
    ees2 aes4. bes\breve*7/16~ s16
    bes4 f~ f2
}
bassNotesAnt = \relative c {
    aes2 c4. ees\breve*7/16 s16
    bes2 f
}
