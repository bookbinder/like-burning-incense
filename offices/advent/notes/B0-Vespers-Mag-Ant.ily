\version "2.18.2"
\include "../../../lbi_defs.ily"

antKeysig = \key f \minor
antiphon = "M"
psalmnum = "Magnificat"
psalmtonestruct = "44"
psalmtone = "17"
frompitch = a
topitch = gis
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
  \set includeGraceNotes = ##t
  Come to us, "Lord, * " and may your pre -- sence be our peace;
  with hearts made per -- fect we shall re -- joice in your
  com -- pan -- ion -- ship for e -- ver.
}
sopNotesAnt = \relative fis' {
		
  gis4 gis8 fis fis4( e) \bar "'" fis8 e fis gis[ a] gis fis a
  a4( gis) \bar "," gis8 b[ cis] b a[ gis fis] fis4 fis8[ gis] fis
}
altoNotesAnt = \relative d' {
}    
tenorNotesAnt = \relative g {
}
bassNotesAnt = \relative c {
}