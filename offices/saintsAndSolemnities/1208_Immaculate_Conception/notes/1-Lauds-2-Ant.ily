\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "9"
antKeysig = \key e \major
psalmnum = "Dan_3_57-88,_56"
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
  The Lord God Most High
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  has blessed you, Vir -- gin Ma -- ry, a -- bove all the
  wo -- men of the earth.
}
sopNotesAnt = \relative e' {
  r8 gis8 gis[ a] gis4 fis8[ a gis] gis4
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis[ fis]
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis[ a gis]
  \allowBreak gis4 \bar "'"
  \allowBreak e8
  \allowBreak fis[ gis]
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak gis[ fis]
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis4( e) \bar "||"
}
altoNotesAnt = \relative c' {
  s8 gis'8 e2~ e4.~ e4. s16 cis2. e2. cis\breve*5/16~ cis2. b2
}
tenorNotesAnt = \relative g {
  b4~ b2 a4. b4. s16 a2. b2. a\breve*5/16~ a2.~ a4( gis)
}
bassNotesAnt = \relative c {
  e4~ e2~ e4.~ e4. s16 a2. e2. a\breve*5/16 a,2. e'2
}
