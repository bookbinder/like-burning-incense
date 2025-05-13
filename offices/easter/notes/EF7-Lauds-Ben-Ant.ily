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
  I pro -- mise
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  that the Fa -- ther will give you a -- ny -- thing you ask for in my name,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis4 e8[ dis] dis4
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak e
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis
  \allowBreak e
  \allowBreak dis[ fis]
  \allowBreak fis4
  \allowBreak e8
  \allowBreak e4
  \allowBreak dis \bar "'"
  \allowBreak fis8
  \allowBreak fis[ e]
  \allowBreak dis4
  dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis4 b2.~ s16 b4. e4 dis\breve*6/16 cis4. b\breve*5/16 cis4~ cis b
}
tenorNotesAnt = \relative g {
  e4 fis2. s16 dis4. gis4 b\breve*6/16 gis4.~
  gis\breve*5/16 e4 gis2
}
bassNotesAnt = \relative c {
  cis4 b2.~ s16 b4.~ b4~ b\breve*6/16 cis4. gis\breve*5/16~ gis4~ gis2
}
