\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key c \major
antiphon = "M"
psalmtone = "1"
psalmtonestruct = "34"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Seek first the king -- dom of God and his jus -- "tice, * "
    and all the rest will be giv -- en to you as well, al -- le -- lu -- ia.

}
sopNotesAnt = \relative e' {
    \global
    \keysig
    g8[ a g] g4 g8 f e f d8([ e] f4) f8 g g[ b a g] g4 \bar "'"
    g8 c[ b] c \bar ""
    a[ g] g g a b a g f a4 \bar "'" a8 b[ a] a[ g] g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    e2. \parenthesize c\breve*9/16 d2~ d4. g4.
    s2 f\breve*5/16~ f\breve*5/16 d2
  }
tenorNotesAnt = \relative c' {
    \global
    \keysig
    c2.~ c\breve*9/16~ c2 b4. c4.~ c2 c\breve*5/16~ c\breve*5/16~ c4 b
  }
bassNotesAnt = \relative c' {
    \global
    \keysig
    c2. a\breve*9/16 g2~ g4. e4.~ e2
    f\breve*5/16 d\breve*5/16 g2
  }
