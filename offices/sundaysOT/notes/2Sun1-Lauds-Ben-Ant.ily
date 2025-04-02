\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "B"
psalmtone = "10"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    The dis -- ci -- ples came to see where Je -- sus \ll "lived * "
    and all that day they stayed with him.

}
sopNotesAnt = \relative e' {
    \global
    \keysig
    e8 fis \bar "" gis4 gis8 a[ gis] fis \bar "" a4 a8 \bar ""
    b b \bar "" gis4 \bar "'"
    gis8 \bar "" fis[ gis] fis[ e] \bar "" e4 cis8[ e] \bar ""
    fis[ gis] fis \bar "" e4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    e4~ e2.~ e4.~ e4~ e4.
    cis2~ cis~ cis4. b4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    gis4 b4. cis4. fis,4. gis4 b4.
    a2~ a2~ a4. gis 4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e4~ e2.~ e4.~ e4~ e4.
    a2~ a a,4. e'4
}
