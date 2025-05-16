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
  With your hand,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  touch the mark of the nails; doubt no lon -- ger, but be -- lieve,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e8 dis dis4( cis)
  \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak cis8[ gis']
  \allowBreak fis
  \allowBreak gis4
  \allowBreak e8
  \allowBreak fis
  \allowBreak fis4( gis) \bar ","
  \allowBreak b8[ cis]
  \allowBreak b
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar "'"
  \allowBreak e8
  \allowBreak e
  \allowBreak dis[-- e]
  \allowBreak \breathe
  \allowBreak fis8[ gis]
  \allowBreak e[ dis]
  \allowBreak cis4
  cis \bar "||"
}
altoNotesAnt = \relative c' {
  s4 s2 s16 cis4. e\breve*8/16 fis4. dis2 b4 b2. gis2
}
tenorNotesAnt = \relative g {
  gis4~ gis2~ s16 gis4. b\breve*8/16~ b4.~ b2 gis4 fis2.~ fis4 e
}
bassNotesAnt = \relative c {
  cis4 e2~ s16 e4.~ e\breve*8/16 dis4. b2~ b4~ b2. cis2
}
