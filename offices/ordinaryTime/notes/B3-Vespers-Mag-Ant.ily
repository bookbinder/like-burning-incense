\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "M"
psalmnum = "Magnificat"
psalmtone = "23"
psalmtonestruct = "42"
antKeysig = \key f \minor
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Do great things for us, O Lord, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    for you are might -- y, and ho -- ly is your name.
}

sopNotesAnt = \relative e' {
    r8 c8 c[ des] c bes \bar "" ees[ f] aes \bar "" aes4( g)
    \noBreak \hideNotes g16 \unHideNotes %so that I can align the * better
    \allowBreak g8
    \allowBreak g
    \allowBreak aes
    \allowBreak f
    \allowBreak ees
    \allowBreak des
    \allowBreak f
    \allowBreak f
    \allowBreak ees
    \allowBreak des
    \allowBreak c4 \bar "||"
}
altoNotesAnt = \relative c' {
    r8 s8 s2  ees4.~ ees\breve*7/16 s16 des4. bes2 aes4
}
tenorNotesAnt = \relative g {
    ees4 f2 aes4. bes\breve*7/16~ s16 bes4. f2~ f4
}
bassNotesAnt = \relative c {
    aes4 des2 c4. ees\breve*7/16 s16 bes4. des2 f,4
}
%% update
