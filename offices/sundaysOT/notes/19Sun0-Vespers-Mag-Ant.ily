\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor
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
master-from-pitch = ais
master-to-pitch = a

text = \lyricmode {
    \set includeGraceNotes = ##t
    Lord, bid me walk a -- cross the wa -- ters. 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    Je -- sus reached out to take hold of Pe -- ter, and said:
    O man of lit -- tle faith, why did you fal -- ter?
}
sopNotesAnt = \relative e' {
  gis4 fis8[ gis] gis b[ cis] cis gis fis e[ cis] cis4
  \noBreak \hideNotes cis16 \unHideNotes  %so taht I can align the * better
  \allowBreak cis8[ e]
  \allowBreak e
  \allowBreak cis[ e]
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak e[ fis]
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e[ gis]
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis4 \bar "'"
  \allowBreak e8[ fis]
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak cis,8([ e] fis4)
  \allowBreak e8
  \allowBreak dis4 \bar "'"
  \allowBreak e4
  \allowBreak e8
  \allowBreak dis
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  e\breve*5/16~ e\breve*5/16 r2 s16 cis\breve*8/16~ cis\breve*5/16
  e2 b4~ b\breve*5/16 cis\breve*5/16 b4 gis2~ gis2
}
tenorNotesAnt = \relative g {
  b\breve*5/16 gis\breve*5/16~ gis2 s16 a\breve*8/16~ a\breve*5/16
  gis2 \parenthesize b4 gis\breve*5/16 a\breve*5/16 fis4~ fis2 e
}
bassNotesAnt = \relative c {
  e\breve*5/16~ e\breve*5/16~ e2 s16 a,\breve*8/16 a\breve*5/16
  cis2 dis4 e\breve*5/16 a,\breve*5/16 b4 cis2~ cis
}
%% update
