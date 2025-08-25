\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "1"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "Ps_110_1-5,_7"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, all power -- ful King, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    free us for the sake of your name.
    Give us time to turn from our sins.
}
sopNotesAnt = \relative e' {
    e4 e8 b cis \bar "" cis([ gis' a] gis4) \bar "'"
    fis8[ gis] fis fis fis \bar ""
    e[ gis] fis e \bar "" fis([ gis] fis4) \bar ","
    e8[ fis] e dis e \bar "" fis4 e8 dis cis4 \bar "||" 
}
altoNotesAnt = \relative c' {
    s\breve*10/16 dis\breve*5/16 e2 dis2 cis\breve*5/16~ cis4 a4 gis4
}
tenorNotesAnt = \relative g {
    gis4. fis4 gis4. b4~ b\breve*5/16 gis2 b gis\breve*5/16 a4 fis e
}
bassNotesAnt = \relative c {
    cis4. dis4 e4.~ e4 b\breve*5/16~ b2~ b2 cis\breve*5/16~ cis2~ cis4
}
