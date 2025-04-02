\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key gis \minor
antiphon = "2"
psalmtone = "39"
psalmtonestruct = "43"
psalmnum = "Ps_145_13b-21"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    To you a -- lone, \ll " Lord,  * " _
    we look with con -- fi -- dence: you are e -- ver
    close to those who call u -- pon you.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 cis8 cis[ e] e fis[ gis] gis4( fis) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    fis8 e[( fis] e4) e8 e dis dis4 \bar "'"
    dis8 e fis[ gis] fis gis[( b] gis4) gis8 \bar "" fis[ gis] fis \bar "" 
    fis e \bar "" dis4 dis \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    gis\breve*7/16 b\breve*5/16~
    s16
    b\breve*5/16~ b2.~ b4.~ b\breve*5/16
    cis4.~ cis4~ cis4 b
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    e\breve*7/16 dis\breve*5/16
    s16
    e\breve*5/16 fis2.~ fis4. e\breve*5/16~
    e4. gis4~ gis2
}
bassNotesAnt = \relative c {
    \global
    \keysig
    cis\breve*7/16 b\breve*5/16
    s16
    gis\breve*5/16 b2. dis4. e\breve*5/16 cis4.~ cis4 gis2
}
