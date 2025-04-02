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
    The grea -- test a -- mong "you * " 
    will be your ser -- vant, says the Lord;
    for I will lift up in glo -- ry the man who hum -- bles him -- self.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 e8 gis fis gis e[ dis] dis4 \bar "'"
    dis8 dis e \bar "" fis[ gis] fis e dis \bar "" dis4( cis) \bar "'"
    cis8 \bar "" b cis \bar "" cis([ gis' fis] gis4) fis8 gis \bar ""
    b[ ais gis] \bar "" gis4 gis8
    \bar "" fis8[ gis fis] e \bar "" gis4 fis8 e \bar "" dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    gis\breve*5/16 b\breve*7/16~ b\breve*10/16 b4 gis\breve*7/16
    dis'4. b4. s2 cis2 b4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    e\breve*5/16 fis\breve*7/16 dis\breve*5/16 gis\breve*5/16
    fis4 e\breve*7/16 gis2. b2 gis2~ gis4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    cis\breve*5/16 b\breve*7/16~ b\breve*5/16 e\breve*5/16 dis4 cis\breve*7/16
    gis2. dis'2 e2 gis,4
}
