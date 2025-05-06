\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Dan_3_52-57"
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
  Bles -- sed
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  be your ho -- ly and glo -- rious name, O Lord, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis8[ e dis] dis4
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak e
  \allowBreak fis
  \allowBreak e
  \allowBreak dis
  \allowBreak fis[ e]
  \allowBreak dis
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak cis4( gis') \bar "'"
  \allowBreak fis8
  \allowBreak fis[ e]
  \allowBreak dis4
  dis \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*7/16~ s16 b2.~ b4. cis\breve*5/16~ cis4~ cis4 b
}
tenorNotesAnt = \relative g {
  fis\breve*7/16 s16 dis2. fis4. gis\breve*5/16~ gis4~ gis2
}
bassNotesAnt = \relative c {
  b\breve*7/16~ s16 b2.~ b4. e\breve*5/16 cis4 gis2
}
