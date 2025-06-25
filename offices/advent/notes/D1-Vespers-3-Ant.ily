\version "2.18.2"
\include "../../../lbi_defs.ily"

antKeysig = \key g \major
antiphon = "3"
% this is a special musical setting, not a normal psalm tone
psalmnum = "Rev_19_1-7"
psalmtonestruct = "special"
psalmtone = "68"
frompitch = a
topitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  E -- ver wi -- "der * " will his king -- dom spread,
  e -- ter -- nal -- ly at peace, al -- le -- lu -- ia.
}
sopNotesAnt = \relative fis' {
		
  g8 g e[ d] d4 d8 d e[ g] g a4 \bar "," a8 b a g a a4 \bar "'"
  a8 a[ b] g4 g \bar "||"
}
altoNotesAnt = \relative d' {
  b\breve*8/16 d4.~ d4. e\breve*7/16~ e4 d2
}    
tenorNotesAnt = \relative g {
  d\breve*8/16 g4. fis4. g\breve*7/16 c4~ c4 b
}
bassNotesAnt = \relative c {
  g\breve*8/16 b4. d4. c\breve*7/16~ c4 g'2
}