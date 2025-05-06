\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig = \key c \major
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
  When Je -- sus had ri -- sen from the dead
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  on the mor -- ning af -- ter the sab -- bath,
  he ap -- peared first to Ma -- ry Mag -- da -- lene, from whom
  he had cast out se -- ven de -- vils, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
    
    
    r8 g8 a g f g[ c] c b a a([ b] a4)
    \noBreak \hideNotes g16 \unHideNotes
    \allowBreak b8
    \allowBreak c
    \allowBreak d4
    \allowBreak c8
    \allowBreak b
    \allowBreak c
    \allowBreak a
    \allowBreak a[ g]
    \allowBreak g4 \bar ","
    \allowBreak g8
    \allowBreak g
    \allowBreak e[ g]
    \allowBreak a4
    \allowBreak g8
    \allowBreak g
    \allowBreak g
    \allowBreak f[ e]
    \allowBreak d
    \allowBreak d4 \bar "'"
    \allowBreak c8
    \allowBreak d[ f]
    \allowBreak d
    \allowBreak c
    \allowBreak d[-- e f]
    \allowBreak f4
    \allowBreak f8
    \allowBreak g
    \allowBreak a4
    \allowBreak a \bar "'"
    \allowBreak g8
    \allowBreak f
    \allowBreak a[ g]
    \allowBreak g4 \bar "||"
  }
altoNotesAnt = \relative c' {
    
    
    e\breve*5/16 c\breve*5/16~ c2. s16 f2. d2. e\breve*7/16 s4. d4 s4. s4
    c\breve*7/16~ c2.~ c4 b
}
tenorNotesAnt = \relative g {
    
    
    g\breve*5/16~ g\breve*5/16 f2. s16 a2.
    b2. c\breve*7/16~ c4. a4.~ a4~ a
    f\breve*7/16~ f2. d2
}
bassNotesAnt = \relative c {
    
    
    c\breve*5/16 e\breve*5/16 f2. s16 d2.
    g2. c\breve*7/16 a4. f4.~ f4~ f4 a,\breve*7/16 f2 d4 g2
}
