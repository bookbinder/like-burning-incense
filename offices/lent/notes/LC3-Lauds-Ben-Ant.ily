\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "43"
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
  The Lord said:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Pe -- ter, I do not tell you to for -- give on -- ly sev -- en times,
  but sev -- en -- ty times sev -- en.
}
sopNotesAnt = \relative e' {
  r8 cis8 cis[ b] e([ fis] gis4)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8[ fis]
  \allowBreak fis4
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak a
  \allowBreak gis
  \allowBreak fis
  \allowBreak e[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis
  \allowBreak e
  \allowBreak dis[ e]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  s2 s2 s16 cis2. e\breve*10/16 cis\breve*5/16~
  4. b4 gis2
}
tenorNotesAnt = \relative g {
  gis2 a4( b) s16 a2. b\breve*10/16 a\breve*5/16~
  4. fis4~ 4 gis
}
bassNotesAnt = \relative c {
  e2~ 2 s16 a2. e\breve*10/16 a\breve*5/16
  a,4. b4 cis2
}
