\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "36"
antKeysig = \key ges \major
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = f


text = \lyricmode {
  \set includeGraceNotes = ##t
  Christ will bap -- tize you
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  with fire and the Ho -- ly Spir -- it, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  aes4 f8 ges aes--([ bes] ces[ bes aes]) aes4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ees
  \allowBreak f[ ges]
  \allowBreak aes
  \allowBreak aes[ des,]
  \allowBreak des4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  \allowBreak des \bar "||"
}
altoNotesAnt = \relative c' {
  des2 ees\breve*8/16 s16 des2 ees4. aes,\breve*5/16
  bes4 aes2
}
tenorNotesAnt = \relative g {
  f2 ges\breve*8/16~ s16 ges2~ 4. f\breve*5/16
  ges4~ ges f
}
bassNotesAnt = \relative c {
  des2 ces\breve*8/16 s16 bes2 ces4. des\breve*5/16~
  4~ 2
}
