\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "15"
antKeysig = \key cis \minor
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = gis
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  Say to the faint- -- hear -- ted:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Take cou -- rage! The Lord our God is co -- ming to save us.
}
sopNotesAnt = \relative e' {
  e4 e8 e8 fis[ gis] gis[ fis] fis4
  \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak e8[ dis]
  \allowBreak cis4
  \allowBreak cis \bar ","
  \allowBreak b8
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak fis4
  \allowBreak e8
  \allowBreak fis4
  \allowBreak e8
  \allowBreak dis
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis2. cis2 s16 b4 s\breve*5/16 cis2.~ cis2 gis2
}
tenorNotesAnt = \relative g {
  e2. a2 s16 fis4 gis\breve*5/16 e4. a4. gis2 fis4 e4
}
bassNotesAnt = \relative c {
  cis2. a2 s16 b4 e\breve*5/16 cis2.~ cis2~ cis2
}
