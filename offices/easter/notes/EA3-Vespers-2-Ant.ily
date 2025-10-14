\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "26"
antKeysig = \key aes \major
psalmnum = "Ps_21_2-8,_14"
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
  You have as -- sumed
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the au -- thor -- i -- ty that is yours; you have
  es -- tab -- lished your king -- dom, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  ees8 ees aes g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak ees8
  \allowBreak ees
  \allowBreak g
  \allowBreak aes
  \allowBreak f
  \allowBreak ees
  \allowBreak des
  \allowBreak ees4 \bar ","
  \allowBreak ees8
  \allowBreak ees
  \allowBreak ees
  \allowBreak des
  \allowBreak f
  \allowBreak aes
  \allowBreak g[ ees]
  \allowBreak ees4 \bar "'"
  \allowBreak ees8
  \allowBreak g[ aes f]
  \allowBreak g--
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4. s4 s16 s4 des\breve*5/16 c\breve*5/16 des4.
  ees4~ 4. c2 bes4
}
tenorNotesAnt = \relative g {
  c4. bes4 s16 g4 f\breve*5/16 aes~ 4.
  bes4 g4. aes2 g4
}
bassNotesAnt = \relative c {
  aes'4. ees2 s16 des\breve*5/16 aes f'4.
  ees4~ 4.~ 2~ 4
}
