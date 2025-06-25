\version "2.18.2"
\include "../../../lbi_defs.ily"

antKeysig = \key aes \major
antiphon = "1"
psalmnum = "Ps_110_1-5,_7"
psalmtone = "21"
psalmtonestruct = "33"
frompitch = a
topitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  The Lord will "come * " on the clouds of hea -- ven
  with great pow -- er and might, al -- le -- lu -- ia.
}
sopNotesAnt = \relative fis' {
		
  r8 ees8 aes[ bes] aes aes4( g) g8 aes f[ g] f f[ ees] ees4 \bar "'"
  ees8 f4 f8 ees des des4( aes'4) \bar "'" aes8 \bar ""
  g[ aes] g[ f ees] \bar "" ees4 \bar "||"
}
altoNotesAnt = \relative d' {
  ees\breve*5/16~ ees2. s4 s4. s4. c\breve*5/16 des4~ des4.~ des4 c4. bes4
}    
tenorNotesAnt = \relative g {
  aes\breve*5/16 bes2. c4. bes\breve*5/16 aes\breve*5/16~ aes4
  f4. bes4 aes4. g4
}
bassNotesAnt = \relative c {
  c\breve*5/16 ees2. aes4. g\breve*5/16 aes\breve*5/16 des,4~ des4.~
  des4 ees4.~ ees4
}