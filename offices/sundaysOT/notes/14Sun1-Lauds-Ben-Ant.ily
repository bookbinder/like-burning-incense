\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key cis \minor
antiphon = "B"
psalmtone = "44"
psalmtonestruct = "32"
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
    Ma -- ny who heard the tea -- ching of Je -- sus were a -- sto -- nished
    and said: 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} Where did he get all this? Is he not the car -- pen -- ter, the
    son of Ma -- ry?
}
sopNotesAnt = \relative e' {
  e8 fis e dis[ e] dis cis[ gis'] gis fis b[ gis] gis4 fis8 e \bar ""
  fis4 fis8 e \bar "" dis4
  \noBreak \hideNotes dis16 \unHideNotes  %so taht I can align the * better
  \allowBreak
  \allowBreak cis8[ gis']
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis4
  \allowBreak e8--[ gis]
  \allowBreak fis4 \bar "|"
  \allowBreak r8
  \allowBreak gis8
  \allowBreak b4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak fis
  \allowBreak e
  \allowBreak e
  \allowBreak cis
  \allowBreak e[ gis fis]
  \allowBreak e
  \allowBreak e[ dis]
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis4. b cis2 b2. cis2 b4 s16 cis\breve*8/16 dis4~ dis fis2 cis2~ cis~ cis4 b
}
tenorNotesAnt = \relative g {
  e4. fis e2 dis2. e2 gis4~ s16 gis\breve*8/16 b4~ b~ b2 gis2~ gis~ gis
}
bassNotesAnt = \relative c {
  cis2.~ cis2 gis2.~ gis2~ gis4 s16 e'\breve*8/16 b4~ b dis2 e cis gis
}
