\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "Mag."
psalmtone = "45"
psalmtonestruct = "42"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Where two or three are ga -- thered to -- ge -- ther in my "name, * " 
    I am there a -- mong them, says the Lord.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    cis4 e8[ fis] e dis e dis[ cis] cis b cis[ gis'] gis gis gis4 fis \bar "'"
    e8 fis \bar "" gis4 fis8 \bar "" gis[ cis,] cis4 \bar "'"
    dis8[ e] dis dis4( cis) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    gis\breve*11/16~ gis2 b gis4~ gis4. a\breve*7/16 gis2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e\breve*11/16 cis2 dis e4~ e4. fis\breve*7/16 e2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis\breve*11/16 e,2 b'2 cis4~ cis4.~ cis\breve*7/16~ cis2
}
