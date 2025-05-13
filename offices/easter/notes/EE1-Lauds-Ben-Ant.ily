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
  Who -- e -- ver lives in me
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and I in him will yield much fruit, says the Lord,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis8 cis b e[ fis] e fis4( gis)
  \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak dis[ fis]
  \allowBreak gis[ fis]
  \allowBreak e4( fis) \bar "'"
  \allowBreak e8
  \allowBreak dis
  \allowBreak cis[-- b]
  \allowBreak \breathe
  \allowBreak cis8
  \allowBreak e[ dis]
  \allowBreak cis4
  cis \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*7/16 s\breve*8/16 s16 s4. dis2 e4( dis2) s4. b4 gis2
}
tenorNotesAnt = \relative g {
  gis\breve*7/16 b\breve*8/16~ s16 b4.~ b2 gis4( fis2)~
  fis4.~ fis4~ fis4 e
}
bassNotesAnt = \relative c {
  e\breve*7/16~ e\breve*8/16 s16 dis4. b2~ b4~ b2 dis4. gis,4 cis2
}
