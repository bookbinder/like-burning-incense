\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key gis \minor
antiphon = "B"
psalmtone = "53"
psalmtonestruct = "43"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    The Son of Man did not come to be served but to "serve, * " 
    and to give his life as a ran -- som for ma -- ny.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 gis8 fis[ gis] ais gis4 gis8 fis[ gis] b[ gis] fis e \bar ""
    fis4 fis8 e \bar "" dis4
    \bar "'" dis8 dis \bar "" e[ dis] cis cis[ gis'] gis fis gis4 gis8 fis
    \bar "" e[ dis] \bar "" dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    dis4 cis4. dis\breve*9/16 cis2 b gis\breve*11/16 cis4 b
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    b4 ais4. b\breve*9/16 gis2~ gis e\breve*11/16 gis2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    gis'4~ gis4.~ gis\breve*9/16 cis,2 gis cis\breve*11/16 gis2
}
