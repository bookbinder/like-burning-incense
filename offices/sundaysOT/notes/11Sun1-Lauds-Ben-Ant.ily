\version "2.20.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "B"
psalmtone = "11"
psalmtonestruct = "33"
psalmnum = "Benedictus"
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
  The king -- dom of hea -- ven is like a mus -- tard seed, 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the small -- est of all seeds; yet when full -- grown it is the
  lar -- gest of shrubs.
}
sopNotesAnt = \relative e' {
  r8 e8 fis gis fis gis fis e gis b cis b b4
  \hideNotes b16 \unHideNotes  %so taht I can align the * better
  \allowBreak b8
  \allowBreak gis
  \allowBreak a
  \allowBreak gis
  \allowBreak fis[ gis fis]
  \allowBreak e4
  \allowBreak r4 \bar "|"
  \allowBreak e8[ fis]
  \allowBreak e
  \allowBreak dis[ e]
  \allowBreak cis4( b) \bar "'"
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis
  \allowBreak cis4
  \allowBreak b8
  \allowBreak gis
  \allowBreak fis4( e) \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*10/16 e\breve*8/16 s16 cis4. gis2 cis\breve*12/16 e2 b
}
tenorNotesAnt = \relative g {
  gis\breve*10/16 e\breve*8/16~ s16 e4.~ e2 gis\breve*5/16~ gis\breve*7/16 a2~ a4 gis
}
bassNotesAnt = \relative c {
  e\breve*10/16 gis,\breve*8/16 s16 a4. e2 cis'\breve*5/16 e\breve*7/16~ e2~ e
}
