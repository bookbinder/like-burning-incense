\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "55"
antKeysig = \key gis \minor
psalmnum = "Ps_114"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = ais
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  Send us strength, O God,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  from your ho -- ly tem -- ple in Je -- ru -- sa -- lem, and per -- fect
  your work in us, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis4 fis8 gis[ fis] dis ais'4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak ais8
  \allowBreak b
  \allowBreak gis[ ais]
  \allowBreak gis
  \allowBreak ais4
  \allowBreak ais8
  \allowBreak gis
  \allowBreak fis
  \allowBreak ais
  \allowBreak gis
  \allowBreak gis4 \bar ","
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak dis
  \allowBreak cis
  \allowBreak dis[-- fis] \bar "'"
  \allowBreak fis8
  \allowBreak fis[ e]
  \allowBreak dis4
  \allowBreak dis \bar "||"
}
altoNotesAnt = \relative c' {
  b4. dis4.~ 2 s16 b4. e4.~ 4 b2.~
  \breve*5/16 cis4.~ 4~ 4 b
}
tenorNotesAnt = \relative g {
  dis4. gis fis2 s16 gis4. cis b4 e,2.
  fis\breve*5/16 gis4.~ 4~ 2
}
bassNotesAnt = \relative c {
  gis4. b dis2 s16 e2.~ 4~ 2.
  dis\breve*5/16 e4. cis4 gis2
}
