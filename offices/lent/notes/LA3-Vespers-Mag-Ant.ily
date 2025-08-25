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
    When you wish to pray, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    go to your room, shut the door, and
    pray to your Fa -- ther in se -- cret.
}
sopNotesAnt = \relative e' {
    g8 a g[ c] c \bar "" a4( g) \bar "'" a4 g8 g e[ f] \breathe \bar ""
    g[ f] e d4 \bar "'" e8 \bar "" f[ a] g f \bar "" a4 g8 f \bar ""
    g4 g \bar "||"
}
altoNotesAnt = \relative c' {
    g'\breve*5/16 e\breve*10/16 d2. c2~ c2~ c4 b
}
tenorNotesAnt = \relative g {
    c\breve*5/16~ c\breve*10/16 a2. s2 s2 d,2
}
bassNotesAnt = \relative c {
    e\breve*5/16 c\breve*10/16 d4. \tieUp f4.~ \tieDown <a,~ f'~>2
    <a f'>2 g2
}
