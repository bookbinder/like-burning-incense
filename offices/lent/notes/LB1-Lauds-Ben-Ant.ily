\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key c \major
antiphon = "B"
psalmtone = "7"
psalmtonestruct = "43"
psalmnum = "Benedictus"
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
    Our Lord Je -- sus Christ 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    a -- bo -- lished death,
    and through the Go -- spel he re -- vealed e -- ter -- nal life.
}
sopNotesAnt = \relative e' {
    g4 f8[ d] e f \bar "" g4 g8 f[ a] c b4 \bar "'"
    g8 g g \bar "" b[ c] d c b \bar "" a[ b] a \bar "" c[ b] a g4 \bar "||"
}
altoNotesAnt = \relative c' {
    s\breve*6/16 e4. f4. g4.~ g4 d\breve*5/16~ d4. f4. d4
}
tenorNotesAnt = \relative g {
    c4~ c2~ c4.~ c4. d4. b4 g\breve*5/16 a4.~ a4. b4
}
bassNotesAnt = \relative c {
    e4 d2 c4. a'4. g4.~ g4~ g\breve*5/16 f4. d4. g4
}
