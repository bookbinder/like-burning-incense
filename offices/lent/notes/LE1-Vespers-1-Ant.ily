\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key a \minor
antiphon = "1"
psalmtone = "38"
psalmtonestruct = "32"
psalmnum = "Ps_110_1-5,_7"
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
    As the ser -- pent was lif -- ted up in the de -- sert, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
   
    so the Son of Man must be lif -- ted up.
}
sopNotesAnt = \relative e' {
    e8 e f e d \bar "" g8[ a] g \bar "" a([ b] \bar "" c4) c8 c
    \bar "" b[ a g] \bar "" g4 \bar "'"
    a4 a8 g f \bar "" g8([ a] g4) g8 g \bar ""
    f[-- g a g] f \bar "" e4 \bar "||"
}
altoNotesAnt = \relative c' {
    s\breve*5/16 e4. f4 g2~ g4.~ g4 f\breve*5/16 e2.
    d\breve*5/16 c4
}
tenorNotesAnt = \relative g {
    g4 a4. c4.~ c4~ c2 d4. b4 c\breve*5/16~ c2.
    a\breve*5/16~ a4
}
bassNotesAnt = \relative c {
    c4~ c4.~ c4. f4( e2) g4.~ g4 f\breve*5/16 c2.
    d\breve*5/16 a4
}
