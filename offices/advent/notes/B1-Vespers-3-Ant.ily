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
  The Lord our king and law -- gi -- "ver * " will come
  to save us.
}
sopNotesAnt = \relative fis' {
		
  r8^"different alleluias from ordinary time? p. 16 in Seasonal pdf"
  g8 g[ a] b a4 g8 b4 b8[ a] a4 a8 b[ d] b a[ g] g4 \bar "||"
}
altoNotesAnt = \relative d' {
  d\breve*5/16 e4. d4~ d\breve*5/16~ d4.~ d2
}    
tenorNotesAnt = \relative g {
  g\breve*5/16~ g4.~ g4 fis\breve*5/16 g4. c4 b
}
bassNotesAnt = \relative c {
  b\breve*5/16 c4. d4~ d\breve*5/16 g4.~ g2
}