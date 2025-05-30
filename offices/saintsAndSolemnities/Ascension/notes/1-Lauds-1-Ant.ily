\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Ps_63_2-9"
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
  Men of Ga -- li -- lee,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  why are you loo -- king up in -- to the sky? This Je -- sus
  who has been ta -- ken up in -- to hea -- ven will re -- turn in
  the same way, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  b4 cis8 cis[ gis'] fis e4
  \noBreak \hideNotes e16 \unHideNotes
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak a
  \allowBreak a4
  \allowBreak a8
  \allowBreak gis
  \allowBreak a
  \allowBreak b4( gis)
  \allowBreak r4 \bar "|"
  \allowBreak a8[ cis]
  \allowBreak b[ gis]
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak gis
  \allowBreak a[ gis fis]
  \allowBreak fis4 \bar "'"
  \allowBreak b,8
  \allowBreak cis
  \allowBreak e4
  \allowBreak e8
  \allowBreak gis
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar "'"
  \allowBreak e8
  \allowBreak cis[ e]
  \allowBreak fis[-- e cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4. cis4.~ cis4 s16 b2 cis\breve*8/16 e2.~ e4~
  e4~ e\breve*5/16 cis\breve*7/16~ cis\breve*5/16 s4 s2
  cis\breve*5/16~ cis4 a4. gis4
}
tenorNotesAnt = \relative g {
  fis4. e4. gis4 s16 e2 a\breve*8/16 gis2. cis4
  gis4 b\breve*5/16 a\breve*7/16 fis\breve*5/16~ fis4 gis2
  a\breve*5/16 gis4 fis4. e4
}
bassNotesAnt = \relative c {
  dis4. cis4.~ cis4 s16 e2~ e\breve*8/16~ e2.~ e4~
  e4~ e\breve*5/16 a\breve*7/16 a,\breve*5/16 dis4 e2
  a\breve*5/16 e4 cis4.~ cis4
}
