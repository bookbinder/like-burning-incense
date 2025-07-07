\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "3"
psalmnum = "Ps_97"
psalmtone = "37"
psalmtonestruct = "33"
antKeysig = \key ges \major
frompitch = a
topitch = aes
%% Master transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = f

text = \lyricmode {
    \set includeGraceNotes = ##t
    The Lord is king, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    let the earth re -- joice.
}

sopNotesAnt = \relative e' {
    r8 des8 ges[ f] ges aes[( bes ces bes] aes4)
    \noBreak \hideNotes aes16 \unHideNotes %so that I can align the * better
    \allowBreak ges8
    \allowBreak ges
    \allowBreak f[ ges]
    \allowBreak ees
    \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
    r8 \noBreak \hideNotes des8~ \unHideNotes des4. ees2. s16
    bes4 ces4. aes4
}
tenorNotesAnt = \relative g {
    ges4~ ges4.~ ges2.~ s16
    ges4~ ges4. f4
}
bassNotesAnt = \relative c {
    bes4~ bes4. ces2. s16 ees4 aes,4. des4
}
