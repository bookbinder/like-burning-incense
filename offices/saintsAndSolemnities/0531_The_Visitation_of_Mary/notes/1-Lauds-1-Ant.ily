\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "19"
antKeysig = \key aes \major
psalmnum = "Ps_63_2-9"
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
  Ma -- ry a -- rose
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and went with haste in -- to the hill coun -- try, to a
  town of Ju -- dah. "[E.T. Al" -- le -- lu -- ia.]
}
sopNotesAnt = \relative e' {
  ees4 f8 ees8 aes([ g f] ees4)
  \noBreak \noBreak \hideNotes ees16 \unHideNotes
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak des([ f] aes4)
  \allowBreak aes8
  \allowBreak f
  \allowBreak aes
  \allowBreak bes4
  \allowBreak aes8
  \allowBreak aes
  \allowBreak g
  \allowBreak aes
  \allowBreak f[ g]
  \allowBreak f
  \allowBreak f[ ees]
  \allowBreak ees4 \bar "||"
  \allowBreak f8
  \allowBreak f[ g f]
  \allowBreak f[ ees]
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*13/16 s16 des\breve*7/16 f\breve*6/16
  des4. bes2~ bes8 c4. bes2
}
tenorNotesAnt = \relative g {
  aes\breve*13/16~ s16 aes\breve*7/16~ aes\breve*6/16~
  aes4.~ aes4 g4~ g8 aes4. g2
}
bassNotesAnt = \relative c {
  c\breve*13/16 s16 f\breve*7/16 des\breve*6/16~
  des4. ees2~ ees8~ ees4.~ ees2
}
