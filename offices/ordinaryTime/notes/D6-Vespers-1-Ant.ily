\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "1"
psalmtone = "4"
psalmtonestruct = "33"
psalmnum = "Ps_145_1-13a"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Day af -- ter day I will bless you, \ll "Lord;  * " _
    I will tell of your mar -- ve -- lous deeds.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    g8[ a] g g f[ e] d e f[ a] a g[( a] g4) \bar "'"
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    g8 a c4 c8 c b c a g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    c2 a\breve*7/16 c2~ 
    s16
    c4~ c2~ c4. b4
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    e2 f\breve*7/16 e2~
    s16
    e4~ e2 f4. d4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    c2 d\breve*7/16 e2
    s16
    c4 a2 f4. g4
}
