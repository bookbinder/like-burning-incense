\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "B"
psalmtone = "12"
psalmtonestruct = "34"
psalmnum = "Benedictus"
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
    Let the lit -- tle child -- ren come to me, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    for they are at home in my Fa -- ther's king -- dom.
}
sopNotesAnt = \relative e' {
  e8 fis gis4 a8 gis fis \bar "" e[ fis] fis \bar "" gis4
  \noBreak \hideNotes gis16 \unHideNotes  %so taht I can align the * better
  \allowBreak gis8
  \allowBreak a[ gis]
  \allowBreak fis
  \allowBreak a
  \allowBreak b4
  \allowBreak e,8
  \allowBreak e
  \allowBreak fis([ gis] fis4)
  \allowBreak e8
  \allowBreak cis[ e]
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  e\breve*7/16~ e4.~ e~ s16 e2~ e cis\breve*5/16 a4 gis
}
tenorNotesAnt = \relative g {
  gis\breve*7/16 a4. b s16 a2 e2~ e\breve*5/16~ e2
}
bassNotesAnt = \relative c {
  e\breve*7/16~ e4.~ e4. s16 cis2 gis2 a\breve*5/16 e2
}
