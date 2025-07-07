\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "28"
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
  A voice is heard cry -- ing in the wil -- der -- ness:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Pre -- pare the way of the Lord; make straight the path
  of our God.
}
sopNotesAnt = \relative e' {
  r8 aes8 aes[ bes] aes aes4 g8 aes f ees f[ ees] des des4
  \noBreak \noBreak \hideNotes des16 \unHideNotes
  \allowBreak des8
  \allowBreak des[ aes']
  \allowBreak aes
  \allowBreak bes4
  \allowBreak bes8
  \allowBreak bes
  \allowBreak bes4( aes) \bar "'"
  \allowBreak aes8
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak ees
  \allowBreak ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*7/16~ des2~ des2.~ s16 des\breve*7/16
  c\breve*5/16~ c4.~ c2 aes
}
tenorNotesAnt = \relative g {
  f\breve*7/16 bes2 aes4. f4. s16 s\breve*7/16
  ees\breve*5/16 f4. aes2 f
}
bassNotesAnt = \relative c {
  des\breve*7/16~ des2~ des2.~ s16 <f, des'>\breve*7/16
  aes\breve*5/16~ aes4.~ aes2 des
}
