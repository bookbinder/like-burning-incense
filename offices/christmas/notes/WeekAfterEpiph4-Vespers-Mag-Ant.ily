\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "43"
antKeysig = \key cis \minor
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
  He -- rod ques -- tioned the Ma -- gi:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  What is this sign of which you speak, this sign
  of a new -- born king? We saw a bril -- liant star in
  the heav -- ens; its splen -- dor filled the world.
}
sopNotesAnt = \relative e' {
  \allowBreak cis4
  \allowBreak b8
  \allowBreak e
  \allowBreak dis
  \allowBreak cis
  \allowBreak dis[ cis]
  \allowBreak cis4
  \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak cis8[ gis']
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak gis
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak e[ fis]
  \allowBreak gis4
  \allowBreak gis4( fis) \bar "|"
  \allowBreak r8
  \allowBreak fis8
  \allowBreak gis[ b]
  \allowBreak b
  \allowBreak gis[ b]
  \allowBreak b
  \allowBreak cis4
  \allowBreak b8
  \allowBreak gis
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar ","
  \allowBreak fis8
  \allowBreak gis[ cis,]
  \allowBreak cis4
  \allowBreak b8([ cis] dis4)
  \allowBreak e8
  \allowBreak dis4( cis) \bar "||"
}
altoNotesAnt = \relative c' {
  gis2. a2 s16 cis2~ 4. b4~ 4.~
  b2~ 2~ 2 dis4 fis2. gis2
  dis\breve*5/16 cis2 r4 b4. gis2
}
tenorNotesAnt = \relative g {
  e2.~ 2~ s16 e2~ 4.~ 4 dis4.
  e2~ 2 dis b'4~ 2.~ 2~
  \breve*5/16 gis2~ 4 fis4.~ 4 e4
}
bassNotesAnt = \relative c {
  e2. a,2 s16 e2 a4. gis4 b4.
  e2 gis,2 b~ b4 dis2. e2
  b\breve*5/16 e2 gis,4~ 4. cis2
}
