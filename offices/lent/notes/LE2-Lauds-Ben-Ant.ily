\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "39"
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
  Who -- ev -- er fol -- lows me
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  does not walk in the dark; he will have
  the light of life.
}
sopNotesAnt = \relative e' {
  r8 cis8 e dis cis[ gis'] fis e4( dis)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak dis8
  \allowBreak dis[ e]
  \allowBreak fis4
  \allowBreak e8
  \allowBreak dis
  \allowBreak dis4( cis) \bar ","
  \allowBreak gis'8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis[ gis fis]
  \allowBreak e
  \allowBreak e4( dis) \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*7/16 b s16 dis2 s2 gis,2~
  2 b
}
tenorNotesAnt = \relative g {
  e\breve*7/16 fis s16 b2 gis e~
  e gis
}
bassNotesAnt = \relative c {
  cis\breve*7/16 b~ s16 b2 e cis~ cis gis
}
