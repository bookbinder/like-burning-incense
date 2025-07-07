\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Eph_1_3-10"
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
  You are shep -- herd of the flock,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the Prince of the a -- pos -- tles; to you were
  en -- trus -- ted the keys of the king -- dom
  of hea -- ven.
}
sopNotesAnt = \relative e' {
  cis4 b8 e cis dis e fis4
  \noBreak \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak e8
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak dis
  \allowBreak e[ cis]
  \allowBreak cis4 \bar "|"
  \allowBreak r8
  \allowBreak b8
  \allowBreak cis[ gis']
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[ gis fis]
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak e
  \allowBreak dis
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4. cis2~ cis4.~ s16 cis\breve*5/16 a4 gis4
  s4 cis2 s2. e4. dis4. gis,2
}
tenorNotesAnt = \relative g {
  gis4.~ gis2 fis4. s16 a\breve*5/16 fis4 e
  fis gis2 b2.~ b4.~ b4. fis4 e
}
bassNotesAnt = \relative c {
  e4. cis2 a4.~ s16 a\breve*5/16 cis2
  dis4 e2 dis2. e4. b4. cis2
}
