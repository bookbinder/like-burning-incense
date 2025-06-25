\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "42"
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
  There was no god be -- fore me
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and af -- ter me there will be none; e -- very knee shall bend
  in wor -- ship, and e -- very tongue shall praise me.
}
sopNotesAnt = \relative e' {
  cis8 cis cis[ gis'] gis([ a] gis4) gis8 gis4 \bar ""
  gis4( fis)
  \noBreak \hideNotes g16 \unHideNotes    
  \allowBreak fis8
  \allowBreak fis
  \allowBreak fis
  \allowBreak e4
  \allowBreak e
  \allowBreak e8
  \allowBreak dis
  \allowBreak cis4
  \allowBreak r4 \bar "|"
  \allowBreak cis8
  \allowBreak b
  \allowBreak cis--([ dis] e4)
  \allowBreak e8
  \allowBreak fis
  \allowBreak e
  \allowBreak e[ dis]
  \allowBreak dis4 \bar "'"
  \allowBreak dis8
  \allowBreak dis[ e]
  \allowBreak dis8
  \allowBreak dis([ e] dis4)
  \allowBreak e8
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  cis4 cis4 e\breve*5/16 dis4 cis\breve*7/16~ s16
  cis4 a2 gis2
  s4 s2 s4. b\breve*8/16~ b\breve*5/16 gis2
}
tenorNotesAnt = \relative g {
  a4 gis b\breve*5/16 gis4 a\breve*7/16 s16
  gis4 fis2 e2
  fis4 gis\breve*7/16 fis\breve*8/16~ fis\breve*5/16~ fis4 e4
}
bassNotesAnt = \relative c {
  fis4 e4~ e\breve*5/16 b4 a\breve*7/16 s16
  cis4~ cis2~ cis2
  dis4 e\breve*7/16 b\breve*8/16 gis\breve*5/16 cis2
}
