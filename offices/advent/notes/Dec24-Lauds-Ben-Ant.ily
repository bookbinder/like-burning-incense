\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key aes \major
antiphon = "B"
psalmtone = "27"
psalmtonestruct = "33"
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
  The time has come
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  for Ma -- ry to give birth to her first -- born Son. 
}
sopNotesAnt = \relative e' {
  r8 f8 des8 ees ees([ f] ees4)
  \noBreak \noBreak \hideNotes ees16 \unHideNotes
  \allowBreak f8
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak aes
  \allowBreak g[ aes]
  \allowBreak f[ ees]
  \allowBreak des
  \allowBreak ees
  \allowBreak f[ g]
  \allowBreak f
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  aes4 des4~ des4 c4. s16 ees2. des2 c4. bes4
}
tenorNotesAnt = \relative g {
  f2 aes4~ aes4.~ s16 aes2.~ aes2~ aes4. g4
}
bassNotesAnt = \relative c {
  f2 aes,4~ aes4. s16 c2. des2~ des4. ees4
}
