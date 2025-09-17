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
  Stay with us, Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  for eve -- ning draws near, and day -- light is fad -- ing,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  des4 f8 ges aes([ bes] aes4)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8
  \allowBreak bes4
  \allowBreak aes8
  \allowBreak ges[ aes]
  \allowBreak aes4 \bar "'"
  \allowBreak aes8
  \allowBreak bes[ aes]
  \allowBreak ges
  \allowBreak f
  \allowBreak ges[ f ees]
  \allowBreak ees4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4 des \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*9/16~ s16 des4.~ 4~ 4.~ 4 bes ces2.~ 4 aes2
}
tenorNotesAnt = \relative g {
  f\breve*9/16 s16 ges4. ees4 f4. ges2~ 2.~ 4~ 4 f
}
bassNotesAnt = \relative c {
  des\breve*9/16~ s16 des4.~ 4~ 4. ges,2 aes2. ces4 des2
}
