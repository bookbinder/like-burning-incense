\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "M"
psalmtone = "2"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    He is not a God of the "dead, * " 
    but of the li -- ving: for to him all things are a -- live,
    al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    g8 g g[ c] a a[ g] f g \bar "" a4 a8 a b \bar "" a[ g] g4 \bar "'"
    g8 g \bar "" e[ g] \bar "" a4 g f8 e \bar "" e4( d) \bar "'"
    a'8 \bar "" b[ a] \bar "" a[ g] g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    e\breve*5/16 f2~ f\breve*5/16 d2 s4 e4~ e2 s2. s8 f4 d2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    c\breve*5/16~ c2~ c\breve*5/16 b2 s4 c4~ c2. a\breve*5/16
    c4~ c b
}
bassNotesAnt = \relative c {
    \global
    \keysig
    c\breve*5/16 f2 d\breve*5/16 g2 s4 c,4~ c2. f\breve*5/16~ f4
    g2
}
