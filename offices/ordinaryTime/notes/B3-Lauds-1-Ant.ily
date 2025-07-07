\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "1"
psalmnum = "Ps_43"
psalmtone = "56"
psalmtonestruct = "43"
antKeysig = \key gis \minor
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = ais
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, send forth 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    your light and your truth.
}

sopNotesAnt = \relative e' {
    e4 b8[ cis] cis[( gis' a] gis4)
    \noBreak \hideNotes gis16 \unHideNotes %so that I can align the * better
    \allowBreak gis8
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak e
    \allowBreak dis4( cis) \bar "||"
}
altoNotesAnt = \relative c' {
    s2 cis4. b4.~ s16 b2 gis2
}
tenorNotesAnt = \relative g {
    gis4 fis e2. s16 dis2 e2
}
bassNotesAnt = \relative c {
    cis4 dis e2. s16 b2 cis2
}
