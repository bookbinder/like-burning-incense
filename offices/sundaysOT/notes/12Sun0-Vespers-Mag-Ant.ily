\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "M"
psalmtone = "56"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    If a -- ny -- one bears wit -- ness to me be -- fore "men, * " 
    I will praise him in the pre -- sence of my Fa -- ther.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 cis8 e dis cis cis[ e] fis4 fis8 e fis fis fis[ a] a4( gis) \bar "'"
    gis4 fis8 \bar "" e[ gis] \bar "" gis4 fis8 e \bar "" fis e cis b \bar ""
    cis8[ e fis e cis] cis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s1*7/8 cis2. e4 e2 dis4. cis4~ cis2~ cis2 a\breve*5/16 gis4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    gis\breve*7/16 e2. a4 b2~ b4. gis4 e2 a2 fis\breve*5/16 e4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e\breve*7/16 a,2. cis4 e2 b4. cis4~ cis2~ cis2~ cis\breve*5/16~ cis4
}
