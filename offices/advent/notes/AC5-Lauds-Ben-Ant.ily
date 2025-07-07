\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "21"
antKeysig = \key aes \major
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
  A -- rise, a -- rise, Lord;  
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  show us your pow -- er and might.
}
sopNotesAnt = \relative e' {
  r8 ees8 aes4 aes8 g[ aes] g([ f] ees4)
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  \allowBreak f8
  \allowBreak ees
  \allowBreak des
  \allowBreak f4
  \allowBreak ees8
  \allowBreak des
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  r8 ees8~ ees4.~ ees4~ ees2 s16 s4. des2 bes4
}
tenorNotesAnt = \relative g {
  aes4~ aes4.~ aes4 bes4( g4) s16 aes4.~ aes2 g4
}
bassNotesAnt = \relative c {
  c4~ c4.~ c4 ees2 s16 des4. bes2 ees4
}
