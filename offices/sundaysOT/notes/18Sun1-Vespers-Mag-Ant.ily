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
    Bro -- thers, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    if you de -- sire to be tru -- ly rich, set your heart on true ri -- ches.
}
sopNotesAnt = \relative e' {
  cis8[ e dis] dis4
  \hideNotes dis16 \unHideNotes  %so taht I can align the * better
  \allowBreak dis8
  \allowBreak dis
  \allowBreak e
  \allowBreak fis
  \allowBreak e
  \allowBreak dis
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak fis4 \bar "'"
  \allowBreak fis8[ gis]
  \allowBreak fis
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak dis([ e] fis4)
  \allowBreak dis8[ cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis4. b\breve*8/16 s16 cis4. r4 dis4. cis4.~ cis2 gis
}
tenorNotesAnt = \relative g {
  e4. fis\breve*8/16 s16 gis4. b4~ b4. gis4. fis2 e
}
bassNotesAnt = \relative c {
  cis4. b\breve*8/16 s16 e4. dis4 b4. cis4.~ cis2~ cis
}
