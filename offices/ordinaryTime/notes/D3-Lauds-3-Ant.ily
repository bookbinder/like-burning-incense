\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key e \major
antiphon = "3"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Ps_144_1-10"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis

text = \lyricmode {
    \set includeGraceNotes = ##t
    O "God,  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    I will sing to you a new song.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 e8 fis4( gis) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    gis8 fis gis[ b] gis fis[( gis] fis4) fis8 gis4 e \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    r8 \hideNotes e8~ \unHideNotes e\breve*9/16
    s16
    cis\breve*5/16 e2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    gis4 b\breve*9/16
    s16
    a\breve*5/16 b4 gis
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e4~ e\breve*9/16~
    s16
    e\breve*5/16~ e2
}
