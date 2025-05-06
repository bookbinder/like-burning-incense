\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "3"
psalmtone = "61"
psalmtonestruct = "33"
psalmnum = "Eph_1_3-10"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    God chose us in his Son  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    to be his a -- dop -- ted chil -- dren.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    d8[ e] f[ e] d e f g[( a] g4) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    g8 f[ a] c c b c a[ g] g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    a\breve*7/16 c\breve*5/16~
    s16
    c2 f4 d2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    f\breve *7/16 e\breve*5/16
    s16
    a2 c4~ c4 b
}
bassNotesAnt = \relative c {
    \global
    \keysig
    d\breve*7/16 c\breve*5/16
    s16
    f2. g2
}
