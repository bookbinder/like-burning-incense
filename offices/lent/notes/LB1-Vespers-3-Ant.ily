\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "3"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "1_Pet_2_21-24"
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
    Mo -- ses and E -- li -- "jah * " were spea -- king to him of the
    death he would en -- dure in Je -- ru -- sa -- lem.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    e4 dis8 cis e \bar "" e[ dis] dis4 e8 fis e dis dis4 dis8 e
    \bar "" cis[ gis'] gis fis e \bar "" fis([ gis] fis4) fis8 fis
    \bar "" e[ fis] e \bar "" dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    gis\breve*5/16 b\breve*12/16 cis\breve*5/16~ cis2.~ cis4. b4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    e\breve*5/16 fis\breve*12/16 gis\breve*5/16~ gis2.~ gis4.~ gis4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis\breve*5/16 b\breve*12/16 e\breve*5/16 cis2. gis4.~ gis4
}
