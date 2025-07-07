\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "21"
antKeysig = \key aes \major
psalmnum = "Ps_149"
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
  A lit -- tle child is born for us to -- day;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  lit -- tle and yet called the migh -- ty God, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 f8 des ees ees[ f] ees des[ f] f ees des ees4
  \noBreak \noBreak \hideNotes ees16 \unHideNotes
  \allowBreak f4
  \allowBreak ees8
  \allowBreak des
  \allowBreak ees[ f]
  \allowBreak f4( aes)
  \allowBreak aes8
  \allowBreak g[-- aes]
  \allowBreak f
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  \allowBreak ees \bar "||"
}
altoNotesAnt = \relative c' {
  s2 c4. s\breve*5/16 s4 s16 des2. ees\breve*5/16
  des4. bes4. c4 bes2
}
tenorNotesAnt = \relative g {
  aes2~ aes4.~ aes\breve*5/16~ aes4~ s16 aes2.~ aes\breve*5/16~
  aes4. g4. aes4~ aes4 g4
}
bassNotesAnt = \relative c {
  des2 aes4. bes\breve*5/16 c4 s16 des2. c\breve*5/16
  des4. ees4.~ ees4~ ees2
}
