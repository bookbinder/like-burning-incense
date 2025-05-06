\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
keysig = \key gis \minor
antiphon = "1"
psalmtone = "81"
psalmtonestruct = "33"
psalmnum = "Ps_118"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  The great crowd
  \markup { \tiny \raise #.5 \char ##x1F7B6 "" }
  that had ga -- thered for the feast
  cried out to the Lord: Bles -- sed is he who comes in the name of the Lord.
  Ho -- san -- na in the high -- est.
}
sopNotesAnt = \relative e' {
    \global
    \keysig
    r8 dis8 fis[ dis] gis4
    \noBreak \hideNotes gis16 \unHideNotes
    \allowBreak fis8
    \allowBreak fis
    \allowBreak fis[ gis]
    \allowBreak fis
    \allowBreak
    \allowBreak fis
    \allowBreak
    \allowBreak fis \bar ""
    \allowBreak dis4 \bar "'"
    \allowBreak dis8[ fis] \bar ""
    \allowBreak gis4
    \allowBreak fis8
    \allowBreak gis \bar ""
    \allowBreak ais4 \bar "'"
    \allowBreak b4
    \allowBreak ais8
    \allowBreak gis \bar ""
    \allowBreak gis[ b]
    \allowBreak gis \bar ""
    \allowBreak ais4
    \allowBreak ais8
    \allowBreak b \bar ""
    \allowBreak cis4
    \allowBreak cis8
    \allowBreak b \bar ""
    \allowBreak ais4 \bar "'"
    \allowBreak b8 \bar ""
    \allowBreak cis
    \allowBreak b
    \allowBreak gis
    \allowBreak fis \bar ""
    \allowBreak gis4
    \allowBreak gis \bar "||"
}
altoNotesAnt = \relative c' {
    \global
    \keysig
    s4 cis4 dis2 s16 cis\breve*5/16 dis2 cis2~ cis4 b2
    dis4.~ dis2 cis2~ cis4. e2 cis4 b
}
tenorNotesAnt = \relative g {
    \global
    \keysig
    b4 ais4 b2 s16 gis\breve*5/16 fis4 b4 gis2 fis4
    dis2 gis4. fis2 gis2 fis4. gis2~ gis
}
bassNotesAnt = \relative c {
    \global
    \keysig
    gis'2 fis2 s16 e\breve*5/16 b2 e2 fis4 gis,2 b4. dis2 e2 fis4.
    cis2 gis2
}

