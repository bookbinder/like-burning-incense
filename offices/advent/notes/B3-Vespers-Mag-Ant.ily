\version "2.18.2"
\include "../../../lbi_defs.ily"

antiphon = "M"
psalmnum = "Magnificat"
psalmtone = "22"
psalmtonestruct = "43"
antKeysig = \key f \minor
frompitch = a
topitch = a
%% Transposition interval after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  A voice is heard cry -- ing in the wil -- der -- "ness: * " Pre -- pare
  the way of the Lord; make straight the path of our God.
}
sopNotesAnt = \relative fis' {
		
  r8 aes8 aes[ bes] aes aes4 g8 aes f ees f[ ees] des des4 \bar ","
  des8 des[ aes'] aes bes4 bes8 bes \bar "" bes4( aes) \bar "'"
  aes8 \bar "" g[ aes] f \bar "" ees[ f] ees ees \bar "" ees4( des) \bar "||"
}
altoNotesAnt = \relative d' {
  des\breve*7/16~ des2~ des2.~ des\breve*7/16
  c\breve*5/16~ c4.~ c2 aes2
}    
tenorNotesAnt = \relative g {
  f\breve*7/16 bes2 aes4. f4.  des\breve*7/16
  ees\breve*5/16 f4. aes2 f2
}
bassNotesAnt = \relative c {
  des\breve*7/16~ des2~ des2.~
  << { \noBreak \hideNotes  des\breve*7/16 \unHideNotes  }
       \new Voice { f,\breve*7/16}
     >>
    aes\breve*5/16~ aes4.~ aes2 des2
}