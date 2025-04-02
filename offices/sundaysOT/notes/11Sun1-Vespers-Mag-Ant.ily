\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "M"
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
    Je -- sus said to the wo -- "man: * "
    Your faith has saved you, go in peace.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    cis8[ e] e dis[ fis] e dis e[ cis] cis4 \bar "'"
    cis8[ gis'] gis4 fis8 e[ dis] dis4 \bar "'" e8([ fis] e4) dis8 dis4( cis) \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    b4. cis2~ cis~ cis4 b4.~ b2 a\breve*5/16 gis2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    e4. fis2 gis4 e~ e~ e4. fis2~ fis\breve*5/16 e2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    cis4.~ cis2~ cis a4 e4. gis2 cis\breve*5/16~ cis2
}
