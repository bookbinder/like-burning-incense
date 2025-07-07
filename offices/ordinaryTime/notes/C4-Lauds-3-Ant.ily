\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "3"
psalmtone = "2"
psalmtonestruct = "43"
psalmnum = "Ps_98"
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
    Let us ce -- le -- brate with joy  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    in the pre -- sence of our Lord and King.
}
sopNotesAnt = \relative e' {
    e8 f g c b a g4
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak g8
    \allowBreak g
    \allowBreak a
    \allowBreak g
    \allowBreak f
    \allowBreak g
    \allowBreak a[ c b]
    \allowBreak a
    \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
    e2.~ e2
    s16
    f2~ f d4
}
tenorNotesAnt = \relative g {
    c2.~ c2~
    s16
    c2~ c b4
}
bassNotesAnt = \relative c {
    c2.~ c2
    s16
    f2 d g4
}
