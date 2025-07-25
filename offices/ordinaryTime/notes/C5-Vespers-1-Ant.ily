\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "1"
psalmtone = "2"
psalmtonestruct = "43"
psalmnum = "Ps_132_1-10"
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
    Let your ho -- ly peo -- ple re -- joice, O Lord,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    as they en -- ter your dwell -- ing place.
}
sopNotesAnt = \relative e' {
    e8 e e[ f] e e d e g[ a] g c([ b] a4) \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak g8
    \allowBreak a
    \allowBreak b4
    \allowBreak a8
    \allowBreak a
    \allowBreak a
    \allowBreak g
    \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
    c\breve*11/16 e2~
    s16
    s4 f2 d
}
tenorNotesAnt = \relative g {
    g\breve*5/16 a4. c4.~ c2~
    s16
    c4~ c2~ c4 b
}
bassNotesAnt = \relative c {
    c\breve*5/16 f4. e a2
    s16
    c,4 d2 g
}
