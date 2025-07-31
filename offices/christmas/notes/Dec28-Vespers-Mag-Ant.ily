\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "43"
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
  The ho -- ly Vir -- gin
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  gave birth to God who be -- came for us the frail, ten -- der
  ba -- by she nursed at her breast. Let us wor -- ship the Lord
  who comes to save us.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak cis8
  \allowBreak e[ dis]
  \allowBreak cis
  \allowBreak b[ cis dis]
  \allowBreak dis4
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8[ e]
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak gis([ a] gis4)
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis[ gis]
  \allowBreak a
  \allowBreak a4
  \allowBreak a8
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak dis
  \allowBreak e
  \allowBreak dis
  \allowBreak fis4
  \allowBreak e8
  \allowBreak dis
  \allowBreak dis4( cis)
  \allowBreak r4 \bar "|"
  \allowBreak b8
  \allowBreak cis
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis([ gis] fis4)
  \allowBreak e8
  \allowBreak dis8[ fis e]
  \allowBreak dis
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*5/16 b4.~ b2 s16 cis4. e2.~ e\breve*6/16~
  e2 s4. b2 gis2 s4 s4 cis2
  s\breve*5/16 dis4 b gis2
}
tenorNotesAnt = \relative g {
  e\breve*5/16 fis4.~ fis2 s16 gis4. b2. cis\breve*6/16
  b2~ b4. dis,2 e2 s4 fis4 gis2
  b\breve*5/16~ b4 fis4~ fis e
}
bassNotesAnt = \relative c {
  cis\breve*5/16 dis4. b2 s16 e4.~ e2.~ e\breve*6/16~
  e2 b4.~ b2 cis2 s4 dis4 e2
  dis\breve*5/16 b2 cis
}
