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
    The Son of Man did not come to be served but to serve, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    and to give his life as a ran -- som for ma -- ny.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak gis8
  \allowBreak fis[ gis]
  \allowBreak ais
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis[ gis]
  \allowBreak b[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak dis4
  \hideNotes dis16 \unHideNotes  %so taht I can align the * better
  \allowBreak dis8
  \allowBreak dis
  \allowBreak e[ dis]
  \allowBreak cis
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e[ dis]
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  dis4 cis4. dis\breve*9/16 cis2 b s16 gis\breve*11/16 cis4 b
}
tenorNotesAnt = \relative g {
  b4 ais4. b\breve*9/16 gis2~ gis s16 e\breve*11/16 gis2
}
bassNotesAnt = \relative c {
  gis'4~ gis4.~ gis\breve*9/16 cis,2 gis s16 cis\breve*11/16 gis2
}
