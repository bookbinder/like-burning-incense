\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "1"
psalmtone = "4"
psalmtonestruct = "33"
psalmnum = "Ps_145_1-13a"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Day af -- ter day I will bless you, Lord;  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    I will tell of your mar -- ve -- lous deeds.
}
sopNotesAnt = \relative e' {
    g8[ a] g g f[ e] d e f[ a] a g[( a] g4) \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak g8
    \allowBreak a
    \allowBreak c4
    \allowBreak c8
    \allowBreak c
    \allowBreak b
    \allowBreak c
    \allowBreak a
    \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
    c2 a\breve*7/16 c2~ 
    s16
    c4~ c2~ c4. b4
}
tenorNotesAnt = \relative g {
    e2 f\breve*7/16 e2~
    s16
    e4~ e2 f4. d4
}
bassNotesAnt = \relative c {
    c2 d\breve*7/16 e2
    s16
    c4 a2 f4. g4
}
