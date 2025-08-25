\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "1"
psalmtone = "6"
psalmtonestruct = "43"
psalmnum = "Ps_63_2-9"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    My God, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    you have be -- come my help.
}
sopNotesAnt = \relative e' {
    g8[ c] \bar "" c4( b) \bar "'" c4 b8 a \bar "" a[ b] a \bar "" g4 \bar "||"
}
altoNotesAnt = \relative e' {
    g4~ g2 e2~ e4. d4
}
tenorNotesAnt = \relative g {
    c4 d2 c2~ c4. b4
}
bassNotesAnt = \relative c {
    e4 g2 a2 f4. g4
}
