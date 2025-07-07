\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "82"
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
  As the Fa -- ther has loved me,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  so I have loved you; live on in my love, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis8 fis gis4 gis8 gis gis[ b] gis4
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak fis4
  \allowBreak fis8[ gis]
  \allowBreak e
  \allowBreak e[ dis]
  \allowBreak cis4 \bar ","
  \allowBreak b8[ cis]
  \allowBreak dis4
  \allowBreak cis8
  \allowBreak b
  \allowBreak cis4 \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  cis \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*10/16 s16 cis\breve*9/16 s2. s4. b4 gis2
}
tenorNotesAnt = \relative g {
  e\breve*10/16~ s16 e\breve*9/16 dis2. e4. fis4~ fis e
}
bassNotesAnt = \relative c {
  e\breve*10/16 s16 a,\breve*9/16 b2.~ b4.~ b4 cis2
}
