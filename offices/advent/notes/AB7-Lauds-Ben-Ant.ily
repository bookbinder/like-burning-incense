\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Benedictus"
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
  The Lord will set up his stan -- dard
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  in the sight of all the na -- tions, and ga -- ther to
  him -- self the dis -- persed of Is -- ra -- el.
}
sopNotesAnt = \relative e' {
  r8 cis8 cis4 b8 e fis e dis[ cis] cis4 
  \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis[ fis]
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak gis4
  \allowBreak gis \bar ","
  \allowBreak gis8
  \allowBreak b[ cis]
  \allowBreak b
  \allowBreak b
  \allowBreak b
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak fis
  \allowBreak e([ fis] e4)
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis8
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*14/16 s16 e4. s4. fis4 e4.~ e\breve*5/16
  cis2~ cis4 b4. gis4.~ gis4
}
tenorNotesAnt = \relative g {
  gis\breve*14/16~ s16 gis4. a4. cis4~ cis4.
  b\breve*5/16 a2~ a4 fis4.~ fis4. e4
}
bassNotesAnt = \relative c {
  e\breve*14/16 s16 cis2.~ cis4~ cis4.
  gis'\breve*5/16 a2 a,4 b4. cis4.~ cis4
}
