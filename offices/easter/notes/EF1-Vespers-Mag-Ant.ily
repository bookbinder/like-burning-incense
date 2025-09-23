\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "16"
antKeysig = \key e \major
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  If a -- ny -- one loves me
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  he will keep my word, and my Fa -- ther will love him.
  We will come to him and make our home with him,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 e8 dis e cis cis[ b] b4
  \noBreak \hideNotes b16 \unHideNotes
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis[ e]
  \allowBreak e4
  \allowBreak r4 \bar "|"
  \allowBreak e8
  \allowBreak dis
  \allowBreak cis[ e]
  \allowBreak cis
  \allowBreak b4
  \allowBreak b8
  \allowBreak cis[ e]
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*13/16 s16 cis2~ 2
  b2. s\breve*11/16 dis2. cis4~
  4 b
}
tenorNotesAnt = \relative g {
  e\breve*13/16~ s16 e2 a2~
  4 gis2~ \breve*11/16 fis2.~ 4
  gis2
}
bassNotesAnt = \relative c {
  gis\breve*13/16 s16 a2~ 2
  e'2.~ \breve*11/16 b2. a4 e'2
}
