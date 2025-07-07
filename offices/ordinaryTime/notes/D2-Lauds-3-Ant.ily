\version "2.20.0"
%% include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "3"
psalmtone = "7"
psalmtonestruct = "43"
psalmnum = "Ps_135_1-12"
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
    You who stand in the house of the Lord,  
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    praise the name of the Lord.
}
sopNotesAnt = \relative e' {
    g8[ a] g g[ f] d e f[ a] g f g4 \bar ""
    \noBreak \hideNotes e16 \unHideNotes   %so that I can align the * better
    \allowBreak g8[ c]
    \allowBreak b
    \allowBreak b[ a]
    \allowBreak g
    \allowBreak f
    \allowBreak a4( g) \bar "||"
}
altoNotesAnt = \relative c' {
    e4. d\breve*8/16 c4
    s16
    e4. f2 d
}
tenorNotesAnt = \relative g {
    c4. a\breve*1/2 g4
    s16
    c4.~ c2~ c4( b)
}
bassNotesAnt = \relative c {
    c4. d\breve*1/2 e4
    s16
    c4. d2 g
}
