\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key a \minor
antiphon = "3"
psalmtone = "6"
psalmtonestruct = "43"
psalmnum = "1_Pet_2_21-24"
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
    Ours were the suf -- ferings  he  bore; 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
   
    ours the tor -- ments he en -- dured.
}
sopNotesAnt = \relative g' {
    c4 g8 a c b a g4 \bar ","
    a a8 b a g f \bar "" g4 \bar "||"
}
altoNotesAnt = \relative e' {
    g\breve*9/16 f\breve*7/16 d4
}
tenorNotesAnt = \relative g {
    c\breve*9/16~ c\breve*7/16 b4
}
bassNotesAnt = \relative c {
    e\breve*9/16 d\breve*7/16 g4
}
