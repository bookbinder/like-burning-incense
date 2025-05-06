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
  No dis -- ci -- ple is grea -- ter than his tea -- cher;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  he should be glad to be -- come like his mas -- ter,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  ees4 ees8 g aes f g4 f8 f f ees4 ees
  \noBreak \hideNotes ees16 \unHideNotes
  \allowBreak ees8
  \allowBreak f
  \allowBreak ees
  \allowBreak des([ f] aes4)
  \allowBreak aes8
  \allowBreak g
  \allowBreak f[ aes]
  \allowBreak g
  \allowBreak f
  \allowBreak f[ ees]
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  ees \bar "||"
}
altoNotesAnt = \relative c' {
  s2. des\breve*5/16 c\breve*7/16 s16 des2.~ des2
  bes\breve*5/16 c4 bes2
}
tenorNotesAnt = \relative g {
  aes2.~ aes\breve*5/16~ aes\breve*7/16~ s16 aes2.~ aes2
  g\breve*5/16 aes4~ aes g
}
bassNotesAnt = \relative c {
  c2. des\breve*5/16 aes\breve*7/16 s16 f'2. des2
  ees\breve*5/16~ ees4~ ees2
}
