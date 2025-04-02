\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "2"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "Ps_114"
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
    Come and see the "place * "
    where the Lord was bu -- ried, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    e4 cis8 dis[ e] dis \bar "" dis4 \bar "" dis8[ e] dis
    \bar "" cis[ gis'] fis \bar "" gis4 gis8 \breathe \bar ""
    fis8 e \bar "" e[ dis] dis4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    cis4.~ cis4. b4~ b4. cis4. b4. cis4~ cis b
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis4.~ gis4.~ gis4 fis4. gis2.~ gis4~ gis2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    cis4. gis4.~ gis4 b4. e2. cis4 gis2
}
