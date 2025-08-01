\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig = \key e \major
antiphon = "2"
psalmtone = "14"
psalmtonestruct = "43"
psalmnum = "Dan_3_52-57"
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
  God grant that with the an -- gels and the chil -- dren
  \markup { \tiny \raise #.5 \char ##x1F7B6 ""}
  we may be faith -- ful, and sing with them to the
  con -- quer -- or of death: Ho -- sa -- nna in the high -- est.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    e8[ fis] e4 e8 cis b \bar "" e[ fis] \allowBreak e \allowBreak fis
    \allowBreak gis \bar ""
    \allowBreak e4 \allowBreak e \bar ""
    \noBreak \noBreak \hideNotes e16 \unHideNotes
    \allowBreak fis4
    \allowBreak fis8
    \allowBreak gis \bar ""
    \allowBreak e([ gis] a[ gis fis]) \bar ""
    \allowBreak fis4 \bar "'"
    \allowBreak fis8
    \allowBreak fis[ gis]
    \allowBreak fis \bar ""
    \allowBreak fis4
    \allowBreak fis8
    \allowBreak gis \bar ""
    \allowBreak a
    \allowBreak a
    \allowBreak gis
    \allowBreak fis \bar ""
    \allowBreak fis4( e) \bar ","
    \allowBreak gis8
    \allowBreak gis([ b] gis4)
    \allowBreak gis8 \bar ""
    \allowBreak fis
    \allowBreak gis \bar ""
    \allowBreak e4
    \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    gis\breve*7/16~ gis\breve*5/16~ gis2 s16 cis2 e\breve*5/16 dis4.
    e4. s2 fis2 s2 s8 e\breve*5/16 cis4 b2
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    e\breve*7/16~ e\breve*5/16~ e2~ s16 e2
    gis\breve*5/16 b4. a4. b2 cis2 b\breve*5/16~
    b\breve*5/16 a4~ a gis
}
bassNotesAnt = \relative c {
    \global
    \keysig
    e\breve*7/16 cis\breve*5/16 b2 s16 a2
    b\breve*5/16~ b4. cis4. dis2 fis2 gis\breve*5/16
    e\breve*5/16~ e4~ e2
}
