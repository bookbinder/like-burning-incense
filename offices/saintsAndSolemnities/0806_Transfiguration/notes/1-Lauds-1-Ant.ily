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
  To -- day the Lord Je -- sus Christ
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  shone with splen -- dor on the moun -- tain,
  his face like the sun and his clothes white as snow.
}
sopNotesAnt = \relative e' {
  r8 cis8 cis4 b8 cis[ e] dis cis cis4( b)
  \noBreak \noBreak \hideNotes b16 \unHideNotes
  \allowBreak e4
  \allowBreak e8
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak e
  \allowBreak dis
  \allowBreak fis[ gis]
  \allowBreak fis4 \bar ","
  \allowBreak gis8
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak gis
  \allowBreak gis[ fis]
  \allowBreak e
  \allowBreak e
  \allowBreak dis[ fis]
  \allowBreak e
  \allowBreak dis
  \allowBreak dis4( cis4) \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*9/16 s2 s16 b\breve*8/16~ b\breve*5/16~
  b2 cis2~ cis4 b gis2
}
tenorNotesAnt = \relative g {
  e\breve*9/16 fis2 s16 e\breve*8/16~ e\breve*5/16~
  e2~ e2 fis4~ fis~ fis e
}
bassNotesAnt = \relative c {
  cis\breve*9/16 dis2 s16 gis,\breve*8/16 e\breve*5/16~
  e2 a2~ a4 b cis2
}
