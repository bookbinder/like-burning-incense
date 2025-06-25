\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "42"
antKeysig = \key cis \minor
psalmnum = "Ps_67"
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
  Lord, make known your will through -- out the earth;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  pro -- claim your sal -- va -- tion to e -- very na -- tion.
}
sopNotesAnt = \relative e' {
  cis8[ e] dis dis[ e] dis cis[ gis'] gis gis gis fis4
  \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis
  \allowBreak gis[ cis,]
  \allowBreak cis
  \allowBreak b
  \allowBreak dis([ e] fis4)
  \allowBreak e8
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis4. b4. cis\breve*5/16 b4. s16 dis2
  cis4 s4 b4~ b4. gis2
}
tenorNotesAnt = \relative g {
  e4. fis4. gis\breve*5/16 b4.~ s16 b2
  gis2 fis4~ fis4.~ fis4 e
}
bassNotesAnt = \relative c {
  cis4. b4. e\breve*5/16 dis4. s16 b2
  e2 b4 gis4. cis2
}
