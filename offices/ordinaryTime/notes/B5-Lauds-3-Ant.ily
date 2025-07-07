\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "3"
psalmnum = "Ps_81"
psalmtone = "48"
psalmtonestruct = "43"
antKeysig = \key f \minor
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Ring out your joy  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    to God our strength.
}

sopNotesAnt = \relative e' {
    aes4 g8 aes \bar "" f4( ees)
    \noBreak \hideNotes ees16 \unHideNotes %so that I can align the * better
    \allowBreak ees8
    \allowBreak ees[ f]
    \allowBreak ees
    \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
    ees2 c\breve*5/16~ s16
    c4. aes4
}
tenorNotesAnt = \relative g {
    aes2~ aes\breve*5/16 s16
    ees4. f4
}
bassNotesAnt = \relative c {
    c2 aes\breve*5/16~ s16
    aes4. des4
}
