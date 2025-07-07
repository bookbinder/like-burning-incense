\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "12"
antKeysig = \key e \major
psalmnum = "Rev_11_17-18_and_12_10b-12a"
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
  No one has as -- cen -- ded in -- to hea -- ven
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  ex -- cept the one who de -- scen -- ded from hea -- ven,
  the Son of Man, who is in hea -- ven,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis8[ a gis] gis4 fis8 e fis[ a] a gis a b[ gis] gis4 
  \noBreak \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak gis
  \allowBreak a4
  \allowBreak a8
  \allowBreak gis
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar ","
  \allowBreak fis8
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak cis([ e] fis4)
  \allowBreak fis8
  \allowBreak fis
  \allowBreak gis
  \allowBreak e4
  \allowBreak e \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
  e\breve*7/16~ e\breve*5/16~ e\breve*7/16 s16 cis2
  e2 cis\breve*5/16~ cis4.~ cis\breve*5/16~ cis4 b4~ b4.
  cis4 b2
}
tenorNotesAnt = \relative g {
  b\breve*7/16 cis\breve*5/16 gis\breve*7/16 s16 a2~
  a2~ a\breve*5/16 gis4. a\breve*5/16~ a4~ a gis4.
  a4~ a gis
}
bassNotesAnt = \relative c {
  e\breve*7/16~ e\breve*5/16~ e\breve*7/16 s16 a2
  cis,2 a\breve*5/16 cis4. a'\breve*5/16 a,4 e'4~ e4.~
  e4~ e2
}
