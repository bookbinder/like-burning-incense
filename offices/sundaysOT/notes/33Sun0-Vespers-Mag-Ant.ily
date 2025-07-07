\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "M"
psalmtone = "45"
psalmtonestruct = "42"
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
    Well done, my good and faith -- ful ser -- vant, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    you have been trust -- wor -- thy in small things. Now
    share your mas -- ter's joy.
}
sopNotesAnt = \relative e' {
  gis8[ cis,] cis4 e8 fis[ gis] fis e[ cis] e \bar "" fis4 fis
  \noBreak \hideNotes fis16 \unHideNotes  %so taht I can align the * better
  \allowBreak fis8
  \allowBreak fis
  \allowBreak fis
  \allowBreak gis[ b]
  \allowBreak cis
  \allowBreak b
  \allowBreak gis
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar "'"
  \allowBreak e4
  \allowBreak dis8[ e]
  \allowBreak fis
  \allowBreak e
  \allowBreak dis
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*5/16 cis2. dis\breve*7/16 s16 e\breve*5/16 dis2
  cis4 a\breve*5/16 gis4
}
tenorNotesAnt = \relative g {
  e\breve*5/16 a4. gis4. b\breve*7/16~ s16 b\breve*5/16~ b2
  gis4 fis\breve*5/16 e4
}
bassNotesAnt = \relative c {
  cis\breve*5/16~ cis2. b\breve*7/16 s16 e\breve*5/16 b2
  cis4~ cis\breve*5/16~ cis4
}
%% update
