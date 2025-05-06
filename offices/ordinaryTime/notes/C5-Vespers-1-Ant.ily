\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "1"
psalmtone = "2"
psalmtonestruct = "43"
psalmnum = "Ps_132_1-10"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Let your ho -- ly peo -- ple re -- joice, O Lord,  \markup \with-color #(x11-color 'gray36) { \tiny \raise #.5 \char ##x1F7B6 } _
    as they en -- ter your dwell -- ing place.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    e8 e e[ f] e e d e g[ a] g c([ b] a4) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    g8 a \bar "" b4 a8 a \bar "" a g g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    c\breve*11/16 e2~
    s16
    s4 f2 d
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    g\breve*5/16 a4. c4.~ c2~
    s16
    c4~ c2~ c4 b
}
bassNotesAnt = \relative c {
    \global
    \keysig
    c\breve*5/16 f4. e a2
    s16
    c,4 d2 g
}
