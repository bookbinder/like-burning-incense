\version "2.18.2"
%% include "../../../lbi_defs.ily"

antiphon = "3"
psalmnum = "Col_1_12-20"
psalmtone = "9"
psalmtonestruct = "33"
keysig = \key e \major
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    All cre -- a -- tion is found  -- ed in him; "* "
    he holds all things to -- ge -- ther in him -- self.
}

sopNotesAnt = \relative e' {
    \keysig
    \global
    e4 e8 fis e e \bar "" dis e cis \bar "" b4
    \hideNotes b16 \unHideNotes %so that I can align the * better
    e8 \bar "" fis[ a] gis[ b] b a \bar "" gis a gis fis \bar "" fis4( e) \bar "||"
}
altoNotesAnt = \relative c' {
    \keysig
    \global
    b2. s4. s4 s16
    s8 e4 gis2 cis, b
}
tenorNotesAnt = \relative g {
    \keysig
    \global
    e2. fis4. gis4. s16
    a4 b2 a2~ a4( gis)
}
bassNotesAnt = \relative c {
    \keysig
    \global
    gis2. b4. e4.~ s16
    e4~ e2~ e2~ e2
}
