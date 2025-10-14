\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "60"
antKeysig = \key ges \major
psalmnum = "Ps_123"
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
  The Lord will be our light for e -- ver;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  your God will be your glo -- ry, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 aes8 f ges aes[ bes] aes bes([ ces] bes4)
  \allowBreak bes8
  \allowBreak bes[ aes]
  \allowBreak aes4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8
  \allowBreak ges[ f]
  \allowBreak ees
  \allowBreak ees
  \allowBreak f
  \allowBreak ges4
  \allowBreak ees8
  \allowBreak \breathe
  \allowBreak ees
  \allowBreak f
  \allowBreak ees[ des] des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*7/16~ \breve*5/16~ des s16 bes\breve*5/16
  ees4. ces4 aes2
}
tenorNotesAnt = \relative g {
  f\breve*7/16 ges\breve*5/16 f s16 ges\breve*5/16~
  4.~ 4~ 4 f
}
bassNotesAnt = \relative c {
  des\breve*7/16~ \breve*5/16~ des s16 ees\breve*5/16
  ces4.~ 4 des2
}
