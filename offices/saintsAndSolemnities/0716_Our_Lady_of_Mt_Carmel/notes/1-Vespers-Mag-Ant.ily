\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "11"
antKeysig = \key e \major
psalmnum = "Magnificat"
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
  Ma -- ry heard the word of God
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and kept it; she pon -- dered it in her heart.
}
sopNotesAnt = \relative e' {
  gis4 gis8 fis e fis[ gis] a a4 
  \noBreak \noBreak \hideNotes a16 \unHideNotes
  a8 a[ gis] gis4 \bar "," fis8 gis fis e fis gis fis4( e) \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*5/16^"Different psalm tone. Does it work?" e2.~ s16 e\breve*5/16 cis\breve*5/16 b2
}
tenorNotesAnt = \relative g {
  b\breve*5/16 a2. s16 b\breve*5/16 a\breve*5/16 gis2
}
bassNotesAnt = \relative c {
  e\breve*5/16~ e2.~ s16 e\breve*5/16~ e\breve*5/16~ e2
}
