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
  The Spi -- rit will glo -- ri -- fy me
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  for he will pro -- claim to you all that he has
  re -- ceived from me, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 des des[ aes'] aes aes bes aes ges aes4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8
  \allowBreak bes
  \allowBreak aes
  \allowBreak ges
  \allowBreak aes
  \allowBreak des,
  \allowBreak des4
  \allowBreak ees8[ f]
  \allowBreak ees
  \allowBreak ees
  \allowBreak f
  \allowBreak ges
  \allowBreak ges[ f]
  \allowBreak ees
  \allowBreak ees4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  \allowBreak des \bar "||"
}
altoNotesAnt = \relative c' {
  r8 des8~ 2~ 4.~ 4.~ s16 des4.~ 2 r2.
  des\breve*6/16 ces4 aes2
}
tenorNotesAnt = \relative g {
  f\breve*6/16 ges4. f s16 ges4. r4 aes ges\breve*6/16~
  ges~ 4~ 4 f
}
bassNotesAnt = \relative c {
  des\breve*6/16~ 4.~ 4. s16 ges4. f2 ces\breve*6/16
  bes aes4 des2
}
