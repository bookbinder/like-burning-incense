\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key gis \minor
antiphon = "Mag."
psalmtone = "38"
psalmtonestruct = "32"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Ma -- ny shall come from the east and the "west, * " 
    and they shall sit down with A -- bra -- ham and I -- saac and Ja -- cob
    in the king -- dom of hea -- ven.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    gis4 fis8 gis cis,[ e] dis8 e fis[ gis] fis e dis4 \bar "'"
    dis8 e dis cis[ gis'] gis fis \bar "" b[ ais] gis gis gis \bar ""
    fis[ ais] ais ais
    \bar "" gis4 gis \bar "'" fis8 gis cis,[ e] e e e[ dis] dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    gis\breve*12/16 b\breve*5/16 cis4 e fis\breve*5/16 fis2 dis2
    \parenthesize b4 cis2~ cis4 b
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e\breve*12/16 fis\breve*5/16 gis4 b4~ b\breve*5/16 ais2 b2~ b4 gis2~ gis
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis\breve*12/16 b\breve*5/16 e4~ e dis\breve*5/16~ dis2 gis2 dis4 e2 gis,
}
