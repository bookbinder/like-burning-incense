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
    Je -- sus said to the wo -- man: 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
    Your faith has saved you, go in peace.
}
sopNotesAnt = \relative e' {
  cis8[ e] e dis[ fis] e dis e[ cis] cis4
  \hideNotes cis16 \unHideNotes  %so taht I can align the * better
  \allowBreak cis8[ gis']
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e[ dis]
  \allowBreak dis4 \bar "'"
  \allowBreak e8([ fis] e4)
  \allowBreak dis8
  \allowBreak dis4( cis) \bar "||"
}
altoNotesAnt = \relative c' {
  b4. cis2~ cis~ s16 cis4 b4.~ b2 a\breve*5/16 gis2
}
tenorNotesAnt = \relative g {
  e4. fis2 gis4 e~ s16 e4~ e4. fis2~ fis\breve*5/16 e2
}
bassNotesAnt = \relative c {
  cis4.~ cis2~ cis s16 a4 e4. gis2 cis\breve*5/16~ cis2
}
