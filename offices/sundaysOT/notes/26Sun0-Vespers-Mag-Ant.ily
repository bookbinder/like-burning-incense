\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "M"
psalmtone = "56"
psalmtonestruct = "43"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Not e -- very -- one who says 'Lord, Lord,' 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    will en -- ter the king -- dom of hea -- ven, but the one who does the will
    of my hea -- ven -- ly Fa -- ther, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 cis8 e dis cis b e[ dis] cis[ gis'] gis([ a] gis4)
  \hideNotes gis16 \unHideNotes  %so taht I can align the * better
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e([ fis] gis4)
  \allowBreak fis8
  \allowBreak e
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar "'"
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis
  \allowBreak b4
  \allowBreak gis8
  \allowBreak gis
  \allowBreak a4
  \allowBreak a8
  \allowBreak gis
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar "'"
  \allowBreak e8
  \allowBreak dis[ fis]
  \allowBreak e--[ dis cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis2. b4 cis4 e\breve*5/16 s16 cis4. b4 dis2 s2 gis,4 b\breve*5/16 e\breve*8/16
  cis4~ cis4. b4 gis4.~ gis4
}
tenorNotesAnt = \relative g {
  e2. fis4 gis b\breve*5/16 s16 a4. gis4~ gis2 e2~ e4~ e\breve*5/16~ e\breve*8/16~
  e4 a4. fis4~ fis4. e4
}
bassNotesAnt = \relative c {
  cis2. b4 e4~ e\breve*5/16~ s16 e4.~ e4 b2 cis2~ cis4 e,\breve*5/16 gis\breve*8/16
  a4~ a4. b4 cis4.~ cis4
}
