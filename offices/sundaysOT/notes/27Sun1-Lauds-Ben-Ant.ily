\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "Ben."
psalmtone = "12"
psalmtonestruct = "34"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Let the lit -- tle child -- ren come to "me, * " 
    for they are at home in my Fa -- ther's king -- dom.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    e8 fis gis4 a8 gis fis \bar "" e[ fis] fis \bar "" gis4 \bar "'"
    gis8 \bar "" a[ gis] fis a \bar ""
    b4 e,8 e \bar "" fis([ gis] fis4) e8 \bar "" cis[ e] \bar "" e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    e\breve*7/16~ e4.~ e~ e2~ e cis\breve*5/16 a4 gis
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis\breve*7/16 a4. b a2 e2~ e\breve*5/16~ e2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*7/16~ e4.~ e4. cis2 gis2 a\breve*5/16 e2
}
