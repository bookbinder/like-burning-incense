\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "3"
psalmtone = "1"
psalmtonestruct = "34"
psalmnum = "Ps_99"
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
    Give praise to the Lord our God,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    bow down be -- fore his ho -- ly moun -- tain.
}
sopNotesAnt = \relative e' {
    r8 g8 b[ c] a g f[ a] a g4 \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak g4
    \allowBreak f8
    \allowBreak e
    \allowBreak d
    \allowBreak e
    \allowBreak f[ g]
    \allowBreak a
    \allowBreak g4
    \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
    e2. f4. e4
    s16
    s2. f4. d2
}
tenorNotesAnt = \relative g {
    g2. a4. c4~
    s16
    c2 a4~ a4. c4 b
}
bassNotesAnt = \relative c {
    c2.~ c4.~ c4
    s16
    e2 f4 d4. g2
}
