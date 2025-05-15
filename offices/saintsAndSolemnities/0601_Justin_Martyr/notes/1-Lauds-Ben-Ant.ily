\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "39"
antKeysig = \key gis \minor
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
  In e -- very sa -- cri -- fice
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  let us praise the Cre -- a -- tor of all things through his Son
  Je -- sus Christ and through the Ho -- ly Spi -- rit.
  "[E.T. Al" -- le -- lu -- ia.]
}
sopNotesAnt = \relative e' {
  r8 cis8 e[ dis] cis e dis dis4
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis
  \allowBreak gis[ cis,]
  \allowBreak cis
  \allowBreak cis
  \allowBreak b[ cis dis]
  \allowBreak dis4
  \allowBreak dis8
  \allowBreak e
  \allowBreak cis[ gis']
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[-- gis]
  \allowBreak \breathe
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e[ dis]
  \allowBreak dis4 \bar "||"
  \allowBreak fis8
  \allowBreak fis[ e]
  \allowBreak dis4
  dis \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*5/16 b2.~ s16 b2 gis2 b4.~ b2
  gis\breve*12/16 cis4 b~ b8 cis4~ cis b
}
tenorNotesAnt = \relative g {
  e\breve*5/16 fis2. s16 dis2 e2 fis4. fis2
  e\breve*12/16( gis2)~ gis8~ gis4~ gis2
}
bassNotesAnt = \relative c {
  cis\breve*5/16 b2.~ s16 b2 e2 dis4. b2
  cis\breve*12/16 gis2~ gis8~ gis4~ gis2
}
