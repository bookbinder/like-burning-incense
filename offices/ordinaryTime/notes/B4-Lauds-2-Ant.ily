\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "1_Sam_2_1-10"
psalmtone = "22"
psalmtonestruct = "43"
antKeysig = \key f \minor
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    My heart leaps up with joy to the Lord, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    for he hum -- bles on -- ly to ex -- alt us.
}

sopNotesAnt = \relative e' {
    r8 c8 c[ des] c c bes \bar "" ees[ f] ees f \bar "" aes4( g)
    \hideNotes aes16 \unHideNotes %so that I can align the * better
    \allowBreak g8
    \allowBreak aes
    \allowBreak f4
    \allowBreak ees8
    \allowBreak f
    \allowBreak f
    \allowBreak ees
    \allowBreak des
    \allowBreak des[ c]
    \allowBreak c4 \bar "||"
}
altoNotesAnt = \relative c' {
    s2 s4. ees2~ ees2. s16 des4. bes2~ bes4 aes4
}
tenorNotesAnt = \relative g {
    ees4 f\breve*5/16 aes2 bes2.~ s16
    bes4. f2~ f2
}
bassNotesAnt = \relative c {
    aes4 des\breve*5/16 c2 ees2. s16
    bes4. des2 f,
}
