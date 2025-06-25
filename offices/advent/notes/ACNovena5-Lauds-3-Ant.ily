\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "21"
antKeysig = \key aes \major
psalmnum = "Ps_99"
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
  Turn to us, O Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  make haste to help your peo -- ple.
}
sopNotesAnt = \relative e' {
  aes8[ g] f g f f4( ees)
  \noBreak \hideNotes ees16 \unHideNotes
  \allowBreak ees8
  \allowBreak des[ f]
  \allowBreak f
  \allowBreak g4
  \allowBreak f8
  \allowBreak f[ ees]
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  ees4. des4 c\breve*5/16 s16 des2. bes2
}
tenorNotesAnt = \relative g {
  aes4.~ aes4~ aes\breve*5/16~ s16 aes2.~ aes4 g
}
bassNotesAnt = \relative c {
  c4. des4 aes\breve*5/16 s16 bes4. des4. ees2
}
