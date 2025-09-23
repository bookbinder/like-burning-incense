\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "34"
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
  My sheep will hear my voice.
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I, their Lord, know them, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 f8 ees[ f] f ees des aes'4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak bes4
  \allowBreak aes8
  \allowBreak f[ ees]
  \allowBreak f[ ees des]
  \allowBreak des4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  \allowBreak des \bar "||"
}
altoNotesAnt = \relative c' {
  aes\breve*9/16 s16 des\breve*5/16 des2.~ 4 aes2
}
tenorNotesAnt = \relative g {
  f\breve*9/16 s16 ges\breve*5/16 f2. ges4~ ges f
}
bassNotesAnt = \relative c {
  des\breve*9/16 s16 ges,\breve*5/16 bes2.~ 4 des2
}
