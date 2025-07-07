\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "46"
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
  Christ the Lord
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  is born to -- day; to -- day the Sa -- vior has ap -- peared.
  Earth e -- choes songs of an -- gel choirs, arch -- an -- gels'
  joy -- ful praise. To -- day on earth his friends e -- xult:
  Glo -- ry to God in the high -- est, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e8 fis fis4( gis)
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8
  \allowBreak fis[ gis a gis]
  \allowBreak fis
  \allowBreak e4( gis) \bar ","
  \allowBreak e8
  \allowBreak e4( fis)
  \allowBreak e8
  \allowBreak fis[ gis]
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis4( e)
  \allowBreak r4 \bar "|"
  \allowBreak gis8[ b]
  \allowBreak b[ cis]
  \allowBreak b
  \allowBreak b
  \allowBreak b
  \allowBreak b
  \allowBreak ais
  \allowBreak gis4 \bar "'"
  \allowBreak gis4
  \allowBreak fis8[ gis]
  \allowBreak a!
  \allowBreak gis
  \allowBreak fis
  \allowBreak e4( gis4) \bar "|"
  \allowBreak r8
  \allowBreak e8
  \allowBreak fis[ gis]
  \allowBreak gis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e[ gis]
  \allowBreak gis
  \allowBreak fis([ gis] fis4) \bar ","
  \allowBreak e4
  \allowBreak dis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak dis[ cis b]
  \allowBreak b4 \bar "'"
  \allowBreak cis8
  \allowBreak e[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  s4 s4 s4. s16 s\breve*5/16 s4 s4. cis\breve*5/16~ cis\breve*5/16
  b2. gis'4 fis\breve*5/16~ fis4 dis2 cis4.~ cis4 e2 s4 e4. dis4. cis4.~ cis2~
  cis2 b2 s2. b4 gis2
}
tenorNotesAnt = \relative g {
  gis4 a4( b4.) s16 a\breve*5/16 gis4( b4.) a\breve*5/16~ a\breve*5/16
  gis2. b4~ b\breve*5/16 cis4 b2 a!4.~ a4 gis4( b4~) b4~ b4.~ b4. gis4.
  a2 gis2 fis2 gis2. fis4~ fis e
}
bassNotesAnt = \relative c {
  e4~ e4~ e4.~ s16 e\breve*5/16~ e4~ e4. a\breve*5/16 a,\breve*5/16
  e'2.~ e4 dis\breve*5/16 fis4 gis2 a4.~ a4 e2~ e4~ e4. b4. cis4.
  a2 cis2 dis2 e2. b4 cis2
}
