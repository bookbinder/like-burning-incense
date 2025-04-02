\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig =  \key g \major
antiphon = "3"
psalmtone = "68"
psalmtonestruct = "special"
psalmnum = "Rev_19_1-7"
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
    Je- sus "said: * " Do not be a -- fraid. Go and tell my bro -- thers
    to set out for Ga -- li -- lee; there they will see me,
    al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    g8 a a4( b) \bar "'" b8 \bar "" b[ c] b a \bar "" a([ b] a4) \bar ","
    g8[ a] g fis g \bar "" e[ d] d g \bar "" a[ b a] a4 g8 \bar ""
    a8[ b] a a([ b ] c4) \bar "'" d4 c8 b \bar "" a[ b g] \bar "" g4
    \bar "'" a8 \bar "" a[ b] \bar "" g4 g \bar "||"
}
altoNotesAnt = \relative e' {
    \global
    \keysig
    \voiceTwo
    g4~ g\breve*5/16 d2~ d b\breve*7/16 d4~ d2. e\breve*7/16 d2 e4. b4.
    c4~ c b
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    b4 \tieDown <g~ d'>\breve*5/16 g2 \tieUp fis2 g\breve*5/16~ g2 fis2.
    g\breve*7/16~ g2~ g4. d4. e4 g2
}
bassNotesAnt = \relative f {
    \global
    \keysig
    \voiceTwo
    g4 s\breve*5/16 g,2 d'2 e\breve*5/16 b2 d2.
    c\breve*7/16 b2 c4. g4.~ g4~ g2
}
