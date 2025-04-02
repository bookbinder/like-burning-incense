\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key gis \minor
antiphon = "3"
psalmtone = "40"
psalmtonestruct = "43"
psalmnum = "Ps_149"
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
    The Lord de -- lights in his peo -- "ple; * " he ho -- nors the
    hum -- ble with vic -- to -- ry.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    r8 dis8 dis[ fis] fis gis4 fis8 gis \bar "" ais[ fis dis] dis4 \bar ","
    dis8 dis cis dis \bar "" fis([ gis] fis4) fis8 fis \bar "" dis dis dis4
    \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s8 dis8~ dis\breve*7/16 ais\breve*9/16 cis\breve*6/16~ cis4 b4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis\breve*9/16 fis\breve*9/16 e\breve*6/16 gis2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    b\breve*9/16 dis\breve*9/16 cis\breve*6/16 gis2
}
