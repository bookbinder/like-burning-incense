\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "42"
antKeysig = \key cis \minor
psalmnum = "Ps_127"
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
  They have ta -- ken my Lord a -- way,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and I do not know where they have put him.
}
sopNotesAnt = \relative e' {
  cis8 dis e dis cis gis' cis,8 cis4
  \noBreak \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak cis8
  \allowBreak dis
  \allowBreak e
  \allowBreak fis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e
  \allowBreak dis
  \allowBreak b[ cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*12/16 s16 b2.~ b4 gis
}
tenorNotesAnt = \relative g {
  gis\breve*12/16 s16 fis2.~ fis4 e
}
bassNotesAnt = \relative c {
  e\breve*12/16 s16 dis2. cis2
}
