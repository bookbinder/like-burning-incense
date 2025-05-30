\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "M"
psalmtone = "42"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Tea -- cher, what is the grea -- test com -- mand -- ment in
    the law? 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} Je -- sus said to him: You shall love the Lord your God
    with your whole heart, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  \allowBreak e4
  \allowBreak dis
  \allowBreak cis8[ gis']
  \allowBreak fis
  \allowBreak gis
  \allowBreak b4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e
  \allowBreak e
  \allowBreak e
  \allowBreak fis
  \allowBreak dis4
  \hideNotes dis16 \unHideNotes  %so taht I can align the * better
  \allowBreak dis8[ e]
  \allowBreak dis
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak fis4 \bar "'"
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak fis[ gis]
  \allowBreak a
  \allowBreak a4
  \allowBreak gis8
  \allowBreak a
  \allowBreak b[ gis a gis fis]
  \allowBreak fis4( e) \bar "'"
  \allowBreak e8
  \allowBreak dis[ e]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  s2 cis2 b1~ b\breve*5/16 s16 cis4.~ cis4 e4~ e2.~ e2~ e\breve*5/16
  cis\breve*5/16 b4 gis2
}
tenorNotesAnt = \relative g {
  gis4 fis e2~ e1 fis\breve*5/16 s16 gis4. a4 a4 b2. cis2 gis\breve*5/16
  a\breve*5/16 fis4~ fis e4
}
bassNotesAnt = \relative c {
  cis2~ cis2 gis1 b\breve*5/16 s16 e4.~ e4~ e4~ e2.~ e2~ e\breve*5/16
  a,\breve*5/16 b4 cis2
}
