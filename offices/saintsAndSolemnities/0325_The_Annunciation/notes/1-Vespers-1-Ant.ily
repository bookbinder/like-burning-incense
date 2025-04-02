\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "1"
psalmtone = "16"
psalmtonestruct = "44"
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
    The an -- gel of the "Lord * " brought God's mes -- sage to Ma -- ry.
    And she con -- ceived by the pow -- er of the Ho -- ly Spi -- rit.
    \ll [Al -- le -- lu -- ia.]
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    
    r8 cis8 cis[ e] cis b cis \bar "" e([ dis] cis4) \bar ""
    cis8[ e] \bar "" fis4 gis8 fis e \bar "" fis[ e cis] cis4 \bar ","
    e8 fis gis \bar "" gis([ b] gis4) fis8 e \bar "" fis8[ gis] fis e fis
    \bar "" gis([ fis] gis4) gis8 \bar "" fis8[ e] e4 \bar "||"
    fis8 fis[ gis] e4 e \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    
    s\breve*11/16 cis4~ cis\breve*5/16~ cis\breve*8/16 dis2.
    cis\breve*5/16 b\breve*5/16 a4 gis4~ gis8 a4~ a gis
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    
    gis\breve*7/16~ gis4( e)~ e4~ e\breve*5/16 a\breve*8/16
    gis2. e\breve*5/16~ e\breve*5/16~ e2~ e8 cis4 b2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    
    e\breve*7/16 cis2~ cis4 a\breve*5/16~ a\breve*8/16 b2.
    a\breve*5/16 e\breve*5/16~ e2~ e8~ e4~ e2
}
