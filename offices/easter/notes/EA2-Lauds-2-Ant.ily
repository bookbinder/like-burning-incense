\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key cis \minor
antiphon = "2"
psalmtone = "43"
psalmtonestruct = "43"
psalmnum = "1_Chr_29_10-13"
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
    Yours is the king -- dom, "Lord, * " and yours the
    pri -- ma -- cy o -- ver all the ru -- lers of the earth,
    al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    cis8[ e] cis b e fis \bar "" fis4( gis) \bar "," gis8
    \bar "" gis8[ a] gis \bar "" gis fis fis4 fis8 e \bar ""
    fis[ gis] fis \bar "" e[ fis] e e dis \bar "" cis[ b]
    \breathe cis8 \bar "" e[ dis] \bar "" cis4 cis \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s\breve*11/16 e4. cis2.~ cis4.~ cis\breve*8/16 b4 gis2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    gis\breve*6/16 b\breve*5/16~ b4. a2.~ a4.
    gis\breve*5/16 fis4.~ fis4~ fis
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*6/16~ e\breve*5/16~ e4. a2. a,4.
    cis\breve*5/16 dis4. b4 cis2
}
