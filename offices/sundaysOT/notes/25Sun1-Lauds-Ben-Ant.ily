\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor
antiphon = "B"
psalmtone = "53"
psalmtonestruct = "43"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% transposition after accounting for psalm tone
master-from-pitch = cis
master-to-pitch = c


text = \lyricmode {
    \set includeGraceNotes = ##t
    The grea -- test a -- mong you 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    will be your ser -- vant, says the Lord;
    for I will lift up in glo -- ry the man who hum -- bles him -- self.
}
sopNotesAnt = \relative e' {
  r8 e8 gis fis gis e[ dis] dis4
  \hideNotes dis16 \unHideNotes  %so taht I can align the * better
  \allowBreak dis8
  \allowBreak dis
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak dis
  \allowBreak dis4( cis) \bar "'"
  \allowBreak cis8
  \allowBreak b
  \allowBreak cis
  \allowBreak cis([ gis' fis] gis4)
  \allowBreak fis8
  \allowBreak gis
  \allowBreak b[ ais gis]
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis8[ gis fis]
  \allowBreak e
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*5/16 b\breve*7/16~ s16 b\breve*10/16 b4 gis\breve*7/16
  dis'4. b4. s2 cis2 b4
}
tenorNotesAnt = \relative g {
  e\breve*5/16 fis\breve*7/16 s16 dis\breve*5/16 gis\breve*5/16
  fis4 e\breve*7/16 gis2. b2 gis2~ gis4
}
bassNotesAnt = \relative c {
  cis\breve*5/16 b\breve*7/16~ s16 b\breve*5/16 e\breve*5/16 dis4 cis\breve*7/16
  gis2. dis'2 e2 gis,4
}
