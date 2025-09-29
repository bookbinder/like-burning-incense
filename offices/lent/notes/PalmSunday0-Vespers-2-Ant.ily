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
  The Lord God is my help;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  no shame can harm me.
}
sopNotesAnt = \relative e' {
  r8 ees8 ees[ f] des4 f8 aes g4( ees)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes4
  \allowBreak g8
  \allowBreak f
  \allowBreak ees4
  \allowBreak ees \bar "||"
}
altoNotesAnt = \relative c' {
  c2 des ees s16 des2 bes
}
tenorNotesAnt = \relative g {
  aes2~ 2 bes4( g) s16 bes2 aes4 g
}
bassNotesAnt = \relative c {
  aes'2 f ees s16 bes2 ees
}
