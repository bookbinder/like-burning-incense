\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "21"
antKeysig = \key aes \major
psalmnum = "Benedictus"
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
  Go in -- to the world
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and teach all na -- tions. Bap -- tize them in the name of the
  Fa -- ther and of the Son and of the Ho -- ly Spi -- rit,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  aes8 g f ees f4
  \noBreak \noBreak \hideNotes f16 \unHideNotes
  \allowBreak f8
  \allowBreak ees[ aes]
  \allowBreak bes[-- aes]
  \allowBreak aes[ g]
  \allowBreak g4 \bar ","
  \allowBreak ees8
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak ees
  \allowBreak des
  \allowBreak ees4
  \allowBreak ees8
  \allowBreak ees
  \allowBreak f[ g]
  \allowBreak f
  \allowBreak f
  \allowBreak f
  \allowBreak ees
  \allowBreak f
  \allowBreak f
  \allowBreak ees
  \allowBreak f
  \allowBreak f[-- g aes]
  \allowBreak aes
  \allowBreak aes[ ees]
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  ees \bar "||"
}
altoNotesAnt = \relative c' {
  ees2 des4. s16 c2 ees\breve*5/16 des\breve*9/16~
  des\breve*10/16 ees\breve*9/16 des4 bes2
}
tenorNotesAnt = \relative g {
  aes2~ aes4.~ s16 aes2 bes\breve*5/16~ bes\breve*5/16
  aes2~ aes\breve*10/16~ aes\breve*9/16~ aes4~ aes g
}
bassNotesAnt = \relative c {
  c2 des4. s16 aes2 ees'\breve*5/16 bes\breve*5/16
  c2 des\breve*10/16 c\breve*9/16 bes4 ees2
}
