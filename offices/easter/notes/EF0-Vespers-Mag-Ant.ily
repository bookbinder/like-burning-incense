\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "60"
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
  I will ask the Fa -- ther
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and he will give you an -- oth -- er Par -- a -- clete
  to re -- main with you for -- ev -- er, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  des8 des f ges aes[ bes aes] aes4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8
  \allowBreak bes
  \allowBreak ces
  \allowBreak des4
  \allowBreak ces8
  \allowBreak bes
  \allowBreak ges[ bes]
  \allowBreak bes
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak aes4 \bar "'"
  \allowBreak aes8
  \allowBreak ges
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak ges[ f]
  \allowBreak ees
  \allowBreak f
  \allowBreak ges
  \allowBreak \breathe
  \allowBreak aes[ ges]
  \allowBreak ees
  \allowBreak des4
  \allowBreak des \bar "||"
}
altoNotesAnt = \relative c' {
  des2 ees\breve*8/16 s16 des\breve*7/16~ \breve*7/16
  ees\breve*8/16 ces4. aes2
}
tenorNotesAnt = \relative g {
  f2 ges\breve*8/16~ s16 ges\breve*7/16 f
  ges\breve*8/16~ 4.~ 4 f
}
bassNotesAnt = \relative c {
  des2 ces\breve*8/16 s16 bes\breve*7/16 des
  ces\breve*8/16 aes4. des2
}
