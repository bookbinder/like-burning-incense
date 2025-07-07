\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key e \major
antiphon = "B"
psalmtone = "10"
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
  The dis -- ci -- ples came to see where Je -- sus lived 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and all that day they stayed with him.
}
sopNotesAnt = \relative e' {
  e8 fis \bar "" gis4 gis8 a[ gis] fis \bar "" a4 a8 \bar ""
  b b \bar "" gis4
  \noBreak \hideNotes gis16 \unHideNotes   %so that I can align the * better
  \allowBreak gis8
  \allowBreak fis[ gis]
  \allowBreak fis[ e]
  \allowBreak e4
  \allowBreak cis8[ e]
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  e4~ e2.~ e4.~ e4~ e4. s16
  cis2~ cis~ cis4. b4
}
tenorNotesAnt = \relative g {
  gis4 b4. cis4. fis,4. gis4 b4. s16
  a2~ a2~ a4. gis 4
}
bassNotesAnt = \relative c {
  e4~ e2.~ e4.~ e4~ e4. s16
  a2~ a a,4. e'4
}
