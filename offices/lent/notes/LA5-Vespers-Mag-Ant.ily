\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "M"
psalmtone = "7"
psalmtonestruct = "43"
psalmnum = "Magnificat"
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
    Ask and you shall re -- ceive, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    seek and you shall find,
    knock and the door shall be o -- pened to you.
}
sopNotesAnt = \relative e' {
    g8[ a] g f g a \bar "" a4 \bar "'" c8[ b] a b a g4 \bar ","
    f8[ e] d e \bar "" f[ a] g a \bar "" c4 b8 a \bar "" g4 \bar "||"
}
altoNotesAnt = \relative c' {
    s\breve*6/16 f4 e\breve*7/16 d2 c~ c b4
}
tenorNotesAnt = \relative g {
    c\breve*6/16~ c4~ c\breve*7/16 a2 f~ f d4
}
bassNotesAnt = \relative c {
    e\breve*6/16 f4 c\breve*7/16 d2 a d, g4
}
