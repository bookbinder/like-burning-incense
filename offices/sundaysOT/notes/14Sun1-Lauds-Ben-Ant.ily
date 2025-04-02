\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key gis \minor
antiphon = "B"
psalmtone = "44"
psalmtonestruct = "32"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Ma -- ny who heard the tea -- ching of Je -- sus were a -- sto -- nished
    and "said: * " Where did he get all this? Is he not the car -- pen -- ter, the
    son of Ma -- ry?
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    e8 fis e dis[ e] dis cis[ gis'] gis fis b[ gis] gis4 fis8 e \bar ""
    fis4 fis8 e \bar "" dis4 \bar "'" cis8[ gis'] gis fis gis4 e8--[ gis] fis4 \bar "|"
    r8 gis8 b4 gis8 fis \bar "" fis e e cis e[ gis fis] e e[ dis] dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    gis4. b cis2 b2. cis2 b4 cis\breve*8/16 dis4~ dis fis2 cis2~ cis~ cis4 b
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    e4. fis e2 dis2. e2 gis4~ gis\breve*8/16 b4~ b~ b2 gis2~ gis~ gis
}
bassNotesAnt = \relative c {
    \global
    \keysig
    cis2.~ cis2 gis2.~ gis2~ gis4 e'\breve*8/16 b4~ b dis2 e cis gis
}
