\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "21"
antKeysig = \key aes \major
psalmnum = "Dan_3_57-88,_56"
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
  May all your crea -- tures
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  give you fit -- ting praise, a -- do -- ra -- tion and
  glo -- ry, O bles -- sed Tri -- ni -- ty.
}
sopNotesAnt = \relative e' {
  r8 ees8 ees[ aes] aes aes[ g] g4
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  \allowBreak ees8
  \allowBreak ees
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak g4
  \allowBreak f8
  \allowBreak f
  \allowBreak g
  \allowBreak f
  \allowBreak f
  \allowBreak f[ ees]
  \allowBreak ees4 \bar "'"
  \allowBreak ees8
  \allowBreak des[ f]
  \allowBreak f
  \allowBreak g
  \allowBreak f
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 ees4.~ ees2. s16 des\breve*7/16~ des4. c\breve*5/16 des4. bes2
}
tenorNotesAnt = \relative g {
  aes\breve*5/16 bes2.~ s16 bes\breve*7/16 aes4.~ aes\breve*5/16~ aes4.~ aes4 g
}
bassNotesAnt = \relative c {
  c\breve*5/16 ees2. s16 bes\breve*7/16 des4. aes\breve*5/16 bes4. ees2
}
