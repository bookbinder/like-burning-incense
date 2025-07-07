\version "2.18.2"
%% include "../../../lbi_defs.ily"

antKeysig = \key g \major
antiphon = "3"
% this is a special musical setting, not a normal psalm tone
psalmnum = "Rev_19_1-7"
psalmtonestruct = "special"
psalmtone = "68"
frompitch = a
topitch = a
%% Master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Praise God, all you who serve him, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    both great and small, al -- le -- lu -- ia.
}

sopNotesAnt = \relative e' {
    g8[ a] b4 a8 c b a[ b a] \bar "" a4 \bar ""
    \noBreak \hideNotes a16 \unHideNotes %so that I can align the * better
    \allowBreak g8
    \allowBreak fis[ g]
    \allowBreak e
    \allowBreak d4 \bar "'"
    \allowBreak g8
    \allowBreak a[ b]
    \allowBreak g4
    \allowBreak g \bar "||"
}
altoNotesAnt = \relative c' {
    d4~ d4. c4 e4. d4~ s16 d8 c4. g4. c4~ c b4
}
tenorNotesAnt = \relative g {
    g4~ g4.~ g4~ g4. fis4 s16
    g8~ g4.~ g4. e4 d2 \bar "||"
}
bassNotesAnt = \relative c {
    b4 g4. a4 d4.~ d4 s16
    b8 c4. g4.~ g4~ g2
}
