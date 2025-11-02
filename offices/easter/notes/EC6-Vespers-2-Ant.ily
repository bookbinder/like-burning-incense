\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "50"
antKeysig = \key f \minor
psalmnum = "Ps_135_13-21"
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
  Bles -- sed is the king -- dom of Da -- vid our fa -- ther
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  which has come a -- mong us, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  f4 f8 ees f g aes g bes4 aes8 aes g[ f] f4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak ees8
  \allowBreak f
  \allowBreak g([ aes] g4)
  \allowBreak ees8
  \allowBreak f4
  \allowBreak f \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak f4
  \allowBreak f \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*8/16 s2 s2. s16 ees\breve*5/16
  des ees4 c2
}
tenorNotesAnt = \relative g {
  c\breve*8/16 des2 c2. s16 bes\breve*5/16~
  bes~ 4~ 4 aes
}
bassNotesAnt = \relative c {
  aes'\breve*8/16~ 2~ 2. s16 ees\breve*5/16
  bes c4 f2
}
