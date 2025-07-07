\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "2"
psalmtone = "3"
psalmtonestruct = "44"
psalmnum = "Dan_3_57-88,_56"
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
    To you, Lord,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    be high -- est glo -- ry and praise for -- e -- ver,
    al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    r8 g8 b[ c] a4( g) \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak g8
    \allowBreak e
    \allowBreak f
    \allowBreak g
    \allowBreak a
    \allowBreak g
    \allowBreak a[( b] c4)
    \allowBreak a8[ c]
    \allowBreak d
    \allowBreak c
    \allowBreak b
    \allowBreak a
    \allowBreak b[ a g]
    \allowBreak g4 \bar "||"
}
altoNotesAnt = \relative c' {
    s1
    s16
    s8 e4~ e4. f4 g2 f2 d4.~ d4
}
tenorNotesAnt = \relative c' {
    d4 e d\breve*5/16
    s16
    c4~ c4.~ c2.~ c2~ c4. b4
}
bassNotesAnt = \relative c' {
    b4 c b\breve*5/16
    s16
    a4 g4. f4( e2) d g4.~ g4
}
