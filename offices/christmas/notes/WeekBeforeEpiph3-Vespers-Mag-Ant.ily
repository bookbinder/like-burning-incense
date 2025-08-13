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
  Let us dance with de -- light in the Lord
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and let our hearts be filled with re -- joic -- ing,
  for e -- ter -- nal sal -- va -- tion
  has ap -- peared on earth, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  \allowBreak b8
  \allowBreak cis
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak gis
  \allowBreak gis([ a] gis4)
  \allowBreak gis8
  \allowBreak gis
  \allowBreak gis4( fis)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis
  \allowBreak gis[ b]
  \allowBreak cis
  \allowBreak b4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak fis[ gis fis]
  \allowBreak fis4 \bar ","
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e[ cis]
  \allowBreak cis
  \allowBreak b
  \allowBreak cis
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak dis([ e] fis4) \bar "'"
  \allowBreak fis8
  \allowBreak e[ dis]
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 cis2 e2. dis\breve*7/16 s16 e\breve*7/16
  cis\breve*7/16~ cis4.~ cis4. s4 b4. cis4( b4.~)
  4 gis2
}
tenorNotesAnt = \relative g {
  fis4 gis2 b2.~ b\breve*7/16 s16 e,\breve*7/16~
  e a4. gis fis4~ fis4. e4( dis4.)
  fis4~ fis e
}
bassNotesAnt = \relative c {
  dis4 e2~ e2. b\breve*7/16 s16 gis\breve*7/16
  a~ 4. cis4. dis4 b4.~ 4~ 4.~
  4 cis2
}
