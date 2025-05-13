\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "2"
psalmnum = "Isa_38_10-14,_17-20"
psalmtone = "11"
psalmtonestruct = "33"
antKeysig = \key e \major
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, keep us safe 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    all the days of our life.
}

sopNotesAnt = \relative e' {
    e4 fis8 a \bar "" a4( gis)
    \hideNotes gis16 \unHideNotes %so that I can align the * better
    \allowBreak fis8
    \allowBreak e
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak fis
    \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
    e2~ e2. s16 cis2 b4
}
tenorNotesAnt = \relative g {
    gis4 a b2. s16 a2 gis4
}
bassNotesAnt = \relative c {
    e2~ e2. s16 e2~ e4
}
