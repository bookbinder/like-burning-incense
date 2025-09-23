\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "21"
antKeysig = \key aes \major
psalmnum = "Ps_130"
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
  With your own blood,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you have re -- deemed us for God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  ees8 f aes4 g
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak ees8
  \allowBreak ees
  \allowBreak ees
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak g
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  \allowBreak ees \bar "||"
}
altoNotesAnt = \relative c' {
  ees2~ 4. s16 c4 des2 c4. des4 bes2
}
tenorNotesAnt = \relative g {
  aes2 bes4. s16 g4 aes2~ 4.~ 4~ 4 g
}
bassNotesAnt = \relative c {
  c2 ees4.~ s16 ees4 des2 aes4. des4 ees2
}
