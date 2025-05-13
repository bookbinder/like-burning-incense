\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "50"
antKeysig = \key f \minor
psalmnum = "Ps_101"
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
  Who -- e -- ver does the will of my Fa -- ther
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  will en -- ter the king -- dom of hea -- ven, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 f8 aes g f ees f[ aes] g aes bes4 bes
  \noBreak \hideNotes bes16 \unHideNotes
  \allowBreak bes8
  \allowBreak aes
  \allowBreak bes
  \allowBreak aes
  \allowBreak g[ bes]
  \allowBreak aes
  \allowBreak g
  \allowBreak g[ f]
  \allowBreak f4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak f4
  \allowBreak f \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*10/16 f\breve*5/16 s16 ees4. f2 des\breve*5/16 ees4 c2
}
tenorNotesAnt = \relative g {
  c\breve*10/16 des\breve*5/16 s16 c4. bes2~ bes\breve*5/16~ bes4~ bes aes
}
bassNotesAnt = \relative c {
  aes'\breve*10/16~ aes\breve*5/16~ s16 aes4. des,2 bes\breve*5/16 c4 f2 
}
