\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "21"
antKeysig = \key aes \major
psalmnum = "Ps_16"
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
  God freed Je -- sus
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  from the pangs of death, and raised him up to
  life, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  ees4 ees8[ aes] aes[ g] g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak ees8
  \allowBreak ees
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak ees4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak des
  \allowBreak f
  \allowBreak aes4 \bar "'"
  \allowBreak g8
  \allowBreak f
  \allowBreak g[ f ees]
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2 s2 s16 s4 s4. s4. c4. des4 ees2 bes4.~ 4
}
tenorNotesAnt = \relative g {
  aes2 bes s16 g4 aes4.~ 4.~ 4.~ 4~ 2~ 4. g4
}
bassNotesAnt = \relative c {
  c2 ees2. s16 des4. c4. aes4. bes4 c2 ees4.~ 4
}
