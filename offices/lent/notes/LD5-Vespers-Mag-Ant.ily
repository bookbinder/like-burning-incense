\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "21"
antKeysig = \key aes \major
psalmnum = "Magnificat"
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
  The works that I do
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  speak on my be -- half, says the Lord. They prove
  that the fa -- ther has sent me.
}
sopNotesAnt = \relative e' {
  r8 ees8 aes4 g8 f ees4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak ees8[ f]
  \allowBreak ees
  \allowBreak des
  \allowBreak f
  \allowBreak aes4
  \allowBreak f8[ g]
  \allowBreak f
  \allowBreak ees4 \bar "|"
  \allowBreak r8
  \allowBreak ees8
  \allowBreak f[ ees]
  \allowBreak des
  \allowBreak ees
  \allowBreak f4
  \allowBreak f8
  \allowBreak g
  \allowBreak f[ ees]
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative e' {
  c\breve*8/16~ s16 c4. des4 ees des4. bes4 r4
  des2~ 2 bes
}
tenorNotesAnt = \relative g {
  ees\breve*8/16 s16 aes4.~ 2~ 4. g4 aes4~
  2~ 2~ 4 g
}
bassNotesAnt = \relative c {
  aes\breve*8/16~ s16 aes4. bes4 c des4. ees4 c4
  bes2 des ees
}
