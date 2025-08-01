\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "2"
psalmtone = "1"
psalmtonestruct = "34"
psalmnum = "Isa_61_10--62_5"
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
    The Lord has robed me 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    with grace and sal -- va -- tion.
}
sopNotesAnt = \relative e' {
    r8 g8 e4 f8 g[ c a] g4 \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak g8
    \allowBreak a[ g]
    \allowBreak f
    \allowBreak g
    \allowBreak a[ g]
    \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
    c\breve*11/16~
    s16
    c2 b
}
tenorNotesAnt = \relative g {
    e\breve*11/16
    s16
    f2 d
}
bassNotesAnt = \relative c {
    c\breve*11/16
    s16
    f,2 g
}
