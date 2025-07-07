\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key gis \minor
antiphon = "M"
psalmtone = "38"
psalmtonestruct = "32"
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
    Tell your -- selves: 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    we are use -- less ser -- vants, for we did on -- ly what we should have done.
}
sopNotesAnt = \relative e' {
  gis8[ fis] gis cis,([ e] dis4)
  \noBreak \hideNotes dis16 \unHideNotes  %so taht I can align the * better
  \allowBreak dis8
  \allowBreak e
  \allowBreak fis4
  \allowBreak e8
  \allowBreak e[ dis]
  \allowBreak dis4 \bar "'"
  \allowBreak dis8
  \allowBreak dis[ e]
  \allowBreak cis[ e]
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak e
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis4. b2. s16 cis4. b\breve*7/16 cis4 e4 cis2 b4
}
tenorNotesAnt = \relative g {
  e4. fis2. s16 e4. fis\breve*7/16 gis4~ gis4.~ gis2~ gis4
}
bassNotesAnt = \relative c {
  cis4. b2.~ s16 b4.~ b\breve*7/16 e4 cis4.~ cis2 gis4
}
