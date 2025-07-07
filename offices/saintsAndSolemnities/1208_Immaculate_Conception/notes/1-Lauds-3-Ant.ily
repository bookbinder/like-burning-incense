\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Ps_149"
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
  Sin -- less Vir -- gin,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  let us fol -- low joy -- ful -- ly in your foot -- steps;
  draw us af -- ter you in the fra -- grance of your ho -- li -- ness.
}
sopNotesAnt = \relative e' {
  e4 fis8 fis[ gis] gis4
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8
  \allowBreak fis
  \allowBreak dis[ e]
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis8
  \allowBreak fis8
  \allowBreak e
  \allowBreak dis
  \allowBreak dis4
  \allowBreak cis4 \bar ","
  \allowBreak e8[ gis]
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis
  \allowBreak e4
  \allowBreak e8
  \allowBreak e
  \allowBreak dis[ fis]
  \allowBreak fis
  \allowBreak e
  \allowBreak dis
  \allowBreak dis
  \allowBreak cis
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  cis4.~ cis2. s16 dis2. b4 gis2
  b\breve*5/16 cis2 b\breve*5/16 gis2
}
tenorNotesAnt = \relative g {
  gis4. dis4 e2 s16 fis2.~ fis4 e2~
  e\breve*5/16~ e4 a fis\breve*5/16~ fis4 e
}
bassNotesAnt = \relative c {
  cis4.~ cis2. s16 b2.~ b4 cis2
  gis\breve*5/16 a2 b\breve*5/16 cis2
}
