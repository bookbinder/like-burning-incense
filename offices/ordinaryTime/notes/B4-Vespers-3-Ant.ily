\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "3"
psalmnum = "Col_1_12-20"
psalmtone = "9"
psalmtonestruct = "33"
antKeysig = \key e \major
frompitch = a
topitch = gis
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    All cre -- a -- tion is found  -- ed in him; 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    he holds all things to -- ge -- ther in him -- self.
}

sopNotesAnt = \relative e' {
    e4 e8 fis e e \bar "" dis e cis \bar "" b4
    \hideNotes b16 \unHideNotes %so that I can align the * better
    \allowBreak e8
    \allowBreak fis[ a]
    \allowBreak gis[ b]
    \allowBreak b
    \allowBreak a
    \allowBreak gis
    \allowBreak a
    \allowBreak gis
    \allowBreak fis
    \allowBreak fis4( e) \bar "||"
}
altoNotesAnt = \relative c' {
    b2. s4. s4 s16
    s8 e4 gis2 cis, b
}
tenorNotesAnt = \relative g {
    e2. fis4. gis4. s16
    a4 b2 a2~ a4( gis)
}
bassNotesAnt = \relative c {
    gis2. b4. e4.~ s16
    e4~ e2~ e2~ e2
}
