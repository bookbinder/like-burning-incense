\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "17"
antKeysig = \key e \major
psalmnum = "Ps_114"
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
  He has res -- cued us
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  from the pow -- er of dark -- ness and has brought
  us in -- to the king -- dom of his Son, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis8 gis a gis gis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak b[ gis]
  \allowBreak gis4 \bar ","
  \allowBreak fis8
  \allowBreak e
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak cis
  \allowBreak b
  \allowBreak cis
  \allowBreak e[ gis]
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis([-- gis a gis] fis4) \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*8/16 s16 s4. s4 s4 s4 s4. s4. b\breve*5/16 cis\breve*7/16~ 4 b2
}
tenorNotesAnt = \relative g {
  b\breve*8/16 s16 a4. cis4 b gis fis4. dis e\breve*5/16~ \breve*7/16 a4~ 4 gis
}
bassNotesAnt = \relative c {
  e\breve*8/16~ s16 e4.~ 2~ 4 b4.~ 4. gis\breve*5/16 a\breve*7/16~ 4 e'2
}
