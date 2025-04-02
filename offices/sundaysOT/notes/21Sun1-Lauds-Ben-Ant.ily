\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "B"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis


text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, to whom shall we "go? * " 
    You have the words of e -- ter -- nal life. We be -- lieve and we are
    con -- vinced that you are Christ, the Son of God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    e4 fis8 gis[ a] gis a b4 \bar "'" e,4 dis8 e \allowBreak
    fis4 \allowBreak e8 fis a[ gis] fis e4 r4 \bar "|"
    e8 gis b[ cis] b b gis b \bar "" cis4 b8 \bar "" gis[ b a] gis \bar ""
    fis8--[ e cis] \breathe e8 \bar "" fis[ a gis] a \bar "" fis--([ e] gis4)
    \bar "'" e8 fis[ gis] e4 e \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    e\breve*9/16 cis\breve*11/16 b2 e\breve*8/16~ e4. dis2 cis e
    cis\breve*5/16~ cis4 b2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    gis\breve*9/16 a\breve*11/16 gis2 e\breve*8/16~ e4. gis2~ gis a
    gis\breve*5/16 a4~ a gis
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e\breve*9/16~ e\breve*11/16~ e2 gis,\breve*8/16 a4. b2 cis4( e~) e2~
    e\breve*5/16~ e4~ e2
}
