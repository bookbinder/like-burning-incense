\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "1"
psalmtone = "64"
psalmtonestruct = "33"
psalmnum = "Ps_110_1-5,_7"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  Our Lord will "come * " to claim his glo -- rious throne
  in the as -- sem -- bly of the prin -- ces.
}
sopNotesAnt = \relative fis' {
		
  r8 des8 ges[ f] ges ges([ bes] aes4) aes8 aes[ bes aes] bes ces
  bes bes4( aes) \bar "'" aes8 aes aes ges ees \bar ""
  ees f \bar "" ees[ des] des4 \bar "||"
}
altoNotesAnt = \relative d' {
  r8 des8~ des4.~ des4~ des4. ees2. des\breve*7/16~ des4 ces4 aes2
}    
tenorNotesAnt = \relative g {
  bes4 ges4.~ ges4 f4. ges2. f\breve*7/16 ges4~ ges~ ges f
}
bassNotesAnt = \relative c {
  ges'4~ <<
  { \noBreak \hideNotes ges4. \unHideNotes }
      \new Voice { bes,4. }
    >>
    des4~ des4. ces2. des\breve*7/16 bes4 ces4 des2
}