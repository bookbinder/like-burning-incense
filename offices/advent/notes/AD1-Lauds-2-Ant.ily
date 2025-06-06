\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "14"
antKeysig = \key e \major
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
  The Lord is here; 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  go out to meet him, say -- ing: Great
  is his birth, e -- ter -- nal his king -- dom, strong God,
  Ru -- ler of all, Prince of peace, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 e8 e[ fis] e fis4( gis)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak fis[ gis a]
  \allowBreak a4
  \allowBreak a8[ gis]
  \allowBreak gis4 \bar ","
  \allowBreak b4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak fis4( e) \bar "'"
  \allowBreak gis8
  \allowBreak b4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak fis[ gis fis]
  \allowBreak fis4 \bar ","
  \allowBreak gis8[ a]
  \allowBreak b4
  \allowBreak cis8
  \allowBreak b
  \allowBreak a
  \allowBreak gis4( fis) \bar "'"
  \allowBreak fis8[ gis fis]
  \allowBreak gis
  \allowBreak a([ gis] fis4) \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
  b4 cis4. e\breve*8/16~ s16 e4.~ e4~ e2 dis2
  cis\breve*5/16 dis2 cis\breve*5/16 fis4 e\breve*5/16
  dis2 cis2~ cis4~ cis4.~ cis4~ cis b
}
tenorNotesAnt = \relative g {
  gis4 a4. b\breve*8/16 s16 a4. cis4 b2~ b2
  gis\breve*5/16~ gis2 e\breve*5/16 a4 gis\breve*5/16 b2
  e,2 fis4 a4.~ a4 gis2
}
bassNotesAnt = \relative c {
  e4~ e4.~ e\breve*8/16~ s16 e4.~ e4~ e2 b2 cis\breve*5/16
  gis2 a\breve*5/16~ a4 e'\breve*5/16 b2
  a2~ a4~ a4.~ a4 e'2
}
