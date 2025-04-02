\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "2"
psalmtone = "7"
psalmtonestruct = "43"
psalmnum = "Dan_3_57-88,_56"
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
    Our re -- dee -- "mer * "
    has ri -- sen from the tomb; let us sing a hymn
    of praise to the Lord our God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    g8 c b[ g] \bar "" g4 g8 \bar "" b[ c] a a b \bar "" a4( g) \bar ","
    g8 g \bar "" f[ e] d \bar "" d[ a'] g \bar "" a4 b8 c d[ c] b[ a]
    \bar "" a4( g) \bar "'" a8 \bar "" a[ b] \bar "" g4 g \bar "||"
}
altoNotesAnt = \relative g' {
    \global
    \keysig
    \voiceTwo
    g4~ g4~ g4. e\breve*5/16~ e2. d4.~ d4.
    f1 d\breve*5/16 e4 d2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    c4 d4 b4. a\breve*5/16 c2. a4.~ a4.
    c1 b\breve*5/16 c4~ c4 b4
}
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e4 g4~ g4. c,\breve*5/16~ c2. d4. f4.~
    f1 g\breve*5/16~ g4~ g2
}
