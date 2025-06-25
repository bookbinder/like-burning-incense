\version "2.20.0"
\include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "B"
psalmtone = "21"
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
  A -- rise, a -- rise, "Lord; * " show us your pow -- er and might.
}
sopNotesAnt = \relative fis' {
		
  r8 ees8 aes4 aes8 g[ aes] g([ f] ees4) \bar "," f8 ees des
  f4 ees8 des ees4 \bar "||"
}
altoNotesAnt = \relative d' {
  r8 ees8~ ees4.~ ees4~ ees2 s4. des2 bes4
}    
tenorNotesAnt = \relative g {
  aes4~ aes4.~ aes4 bes4( g4) aes4.~ aes2 g4
}
bassNotesAnt = \relative c {
  c4~ c4.~ c4 ees2 des4. bes2 ees4
}