\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "B"
psalmtone = "11"
psalmtonestruct = "33"
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
    Love the Lord your God with all your heart 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    and love your neigh -- bor as your -- self. There is no grea -- ter
    com -- mand -- ment than these.
}
sopNotesAnt = \relative e' {
  gis8[ a] gis fis[ gis] a8 a4 gis8 a[ cis] cis b4( gis)
  \hideNotes gis16 \unHideNotes  %so taht I can align the * better
  \allowBreak gis8
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e[ cis]
  \allowBreak cis4
  \allowBreak cis8
  \allowBreak e
  \allowBreak e4( fis) \bar "'"
  \allowBreak fis8
  \allowBreak fis
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  e2.~ e\breve*6/16~ e\breve*8/16 s16 cis2~ cis4~ cis2.
  e\breve*5/16 cis4. b4
}
tenorNotesAnt = \relative g {
  b2. cis\breve*6/16 gis\breve*5/16 s16 b4. gis4 e4~ e4
  a2. b\breve*5/16 a4. gis4
}
bassNotesAnt = \relative c {
  e2.~ e\breve*6/16~ e\breve*5/16 s16 dis4. cis2~ cis4 a2. e'\breve*5/16~
  e4.~ e4
}
