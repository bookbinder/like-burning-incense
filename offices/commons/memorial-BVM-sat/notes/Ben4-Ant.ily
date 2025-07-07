\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key gis \minor
antiphon = "4"
psalmtone = "56"
psalmtonestruct = "43"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% master transposition after accounting for psalm tone
master-from-pitch = ais
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Hail, Ma -- ry, full of "grace; * " the Lord is with you; bles -- sed
    are you a -- mong wo -- men, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    e4 b8 cis cis[ gis'] a gis4 \bar "'" gis8 gis[ fis] e fis cis4 \bar ","
    fis8 fis fis gis fis e \bar "" dis[ e] fis \breathe \bar "" e8 dis \bar "" cis4 cis \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s2 cis4. e4. cis4.~ cis4.~ cis2. dis4. b4 gis2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis4 fis gis4. b4. a4.~ a4. fis2.~ fis4.~ fis4~ fis4 e
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis4 dis e4.~ e4. a4. a,4.~ a2. b4.~ b4 cis2
}
