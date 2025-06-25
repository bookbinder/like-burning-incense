\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "M"
psalmnum = "Magnificat"
psalmtone = "40"
psalmtonestruct = "43"
antKeysig = \key ees \minor
frompitch = a
topitch = aes


text = \lyricmode {
  \set includeGraceNotes = ##t
  Zi -- "on, * " you will be re -- newed, and you will see the Just One
  who is co -- ming to you.
}
sopNotesAnt = \relative fis' {
		
  ges8[ aes] aes4 \bar "'" aes8 bes4 bes8 ges8 aes4 \bar ","
  aes8 ees aes ges f ees[ des] ees4( des8) \breathe
  ces8 des ees4 ees8 ges ees4 \bar "||"
}
altoNotesAnt = \relative d' {
  des4~ des4.~ des2~ des4. ees2 r4 bes\breve*5/16 ces2 bes4
}    
tenorNotesAnt = \relative g {
  ges4 f4. ges2 f4. ges2.~ ges\breve*5/16~ ges2~ ges4
}
bassNotesAnt = \relative c {
  bes4 des4.~ des2~ des4. ces2. ges\breve*5/16 aes2 ees'4
}