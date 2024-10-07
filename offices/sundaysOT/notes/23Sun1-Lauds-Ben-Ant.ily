\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
keysig =  \key a \minor
antiphon = "Ben."
psalmtone = "4"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    He has done all things "well: * " 
    he has made the deaf hear and the mute speak, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    \voiceOne
    g8 g a4 g8[ c] c c4( b) \bar "'" b8 c a[ b] a g[ a] b4 a8 a \bar ""
    g[ a] b4 \bar "'" a8 \bar "" b[ a] a[ g] g4 \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    \voiceTwo
    s2 g'4. g2. e4.~ e4 g e d~ d4. c4~ c b
  }
tenorNotesAnt = \relative g {
    \global
    \keysig
    \voiceOne
    c\breve*7/16 d2. c4.~ c4 d4 c b g4. e4 d2
  }
bassNotesAnt = \relative c {
    \global
    \keysig
    \voiceTwo
    e\breve*7/16 g2. c4.~ c4 g2~ g4 g,4.~ g4 g2
  }
