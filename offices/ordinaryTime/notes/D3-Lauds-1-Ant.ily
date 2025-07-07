\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "1"
psalmtone = "4"
psalmtonestruct = "33"
psalmnum = "Ps_101"
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
    I will sing to you, O Lord;  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    I will learn from you the way of per -- fec -- tion.
}
sopNotesAnt = \relative e' {
    g8 g b[ c] a g f a4( g) \bar ""
    \noBreak \hideNotes g16 \unHideNotes   %so that I can align the * better
    \allowBreak g8
    \allowBreak g
    \allowBreak f[ e]
    \allowBreak d
    \allowBreak d4
    \allowBreak e8
    \allowBreak f[ a]
    \allowBreak a
    \allowBreak a
    \allowBreak a[ g]
    \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
    e\breve*7/16~ e2.
    s16 d2.~ d2~ d
}
tenorNotesAnt = \relative g {
    g\breve*7/16 c2.
    s16
    a2. c2~ c4 b
}
bassNotesAnt = \relative c {
    c\breve*7/16~ c2.
    s16
    d4. f~ f2 g
}
