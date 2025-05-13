\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "3"
psalmtone = "4"
psalmtonestruct = "33"
psalmnum = "Rev_15_3-4"
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
    All na -- tions will come  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    and wor -- ship be -- fore you, O Lord.
}
sopNotesAnt = \relative e' {
    g4 b8 c a g[( f] a4) \bar ""
    \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak a8
    \allowBreak b
    \allowBreak c
    \allowBreak a
    \allowBreak b
    \allowBreak a
    \allowBreak a
    \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
    d4 e4. d4~ d4.
    s16
    f2. d4
}
tenorNotesAnt = \relative g {
    b4 a4.~ a4~ a4.
    s16
    c2. b4
}
bassNotesAnt = \relative g {
    g4 c, 4. d4( f4.)~
    s16
    f2. g4
}
