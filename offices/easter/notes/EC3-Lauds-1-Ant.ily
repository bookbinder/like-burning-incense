\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "14"
antKeysig = \key e \major
psalmnum = "Ps_85"
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
  You will turn back, O God,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and bring us to life, and your peo -- ple will
  re -- joice in you, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e8 fis fis[ gis] fis e gis4( b)
  \noBreak \hideNotes b16 \unHideNotes
  \allowBreak b8
  \allowBreak a[ b]
  \allowBreak a
  \allowBreak gis
  \allowBreak fis4 \bar ","
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  e \bar "||"
}
altoNotesAnt = \relative c' {
  s4 s2 gis'4( e4.)~ s16 e2 cis2 b cis\breve*8/16 b2
}
tenorNotesAnt = \relative g {
  gis4 a2 b4( gis4.) s16 a2~ a2 gis a\breve*8/16~ a4 gis4
}
bassNotesAnt = \relative c {
  e4~ e2~ e4~ e4. s16 cis2 a e'~ e\breve*8/16~ e2
}
