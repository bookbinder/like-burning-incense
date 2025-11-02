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
  All that the Fa -- ther gives me
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  will come to me, and who -- ev -- er comes to me
  I shall not turn a -- way, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  des4 f8 ges aes[ des] des c[ bes] aes4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak f8[ aes]
  \allowBreak bes([ c] bes4)
  \allowBreak bes8
  \allowBreak aes4 \bar ","
  \allowBreak aes8
  \allowBreak aes
  \allowBreak f[ aes]
  \allowBreak bes
  \allowBreak bes
  \allowBreak aes
  \allowBreak ges([ f] ees4)
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak ees[ f]
  \allowBreak ges
  \allowBreak f
  \allowBreak f4( ees) \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  \allowBreak des \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*13/16~ s16 des\breve*5/16~ des\breve*9/16~
  \breve*11/16 bes\breve*7/16~ 4 aes
}
tenorNotesAnt = \relative g {
  f\breve*13/16 s16 ges\breve*5/16 f\breve*9/16
  ges\breve*11/16~ \breve*7/16 f2
}
bassNotesAnt = \relative c {
  des\breve*13/16~ s16 des\breve*5/16~ \breve*9/16
  bes\breve*11/16 ges\breve*7/16 des'2
}
