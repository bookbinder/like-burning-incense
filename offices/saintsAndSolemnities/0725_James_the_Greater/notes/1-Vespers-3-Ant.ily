\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "70"
antKeysig = \key e \major
psalmnum = "Eph_1_3-10"
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
  King He -- rod be -- gan
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  per -- se -- cu -- ting cer -- tain mem -- bers of the Church.
  He be -- hea -- ded James, the bro -- ther of John.
}
sopNotesAnt = \relative e' {
  e4 fis8 gis e fis4
  \noBreak \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis4 \bar ","
  \allowBreak e8
  \allowBreak e
  \allowBreak fis[ a]
  \allowBreak a
  \allowBreak gis4
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*5/16^"Different psalm tone. Does it work?"
  s4 s16 s2 cis\breve*10/16 e4. e cis b4
}
tenorNotesAnt = \relative g {
  gis\breve*5/16 a4 s16 b2 a\breve*10/16~ a4. b a gis4
}
bassNotesAnt = \relative c {
  e\breve*5/16~ e4~ s16 e2 a\breve*10/16 cis,4. e2.~ e4
}
