\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "B"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% Transposition interval after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  Be com -- for -- ted, my peo -- "ple; * " be com -- for -- ted,
  says the Lord your God.
}
sopNotesAnt = \relative fis' {
		
  aes4 aes8 g f ees f[ aes] aes4 \bar "'" f8[ aes] bes[ c] bes bes4 \bar "'"
  aes8 f ees[ f] g g4( f) \bar "||"
}
altoNotesAnt = \relative d' {
  c\breve*10/16~ c4 f\breve*7/16 ees4. c2
}    
tenorNotesAnt = \relative g {
  aes\breve*10/16~ aes4~ aes\breve*7/16 bes4.~ bes4( aes)
}
bassNotesAnt = \relative c {
  f\breve*10/16 ees4 des\breve*7/16 c4. f2
}