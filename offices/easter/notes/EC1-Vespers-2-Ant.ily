\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "79"
antKeysig = \key e \major
psalmnum = "Ps_111"
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
  The Lord
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  has re -- deemed his peo -- ple, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 gis8 gis([ a] gis4)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e[ gis]
  \allowBreak fis
  \allowBreak a4
  \allowBreak gis8
  \allowBreak \breathe
  \allowBreak fis
  \allowBreak a
  \allowBreak a[ gis]
  \allowBreak gis4 \bar "||"
}
altoNotesAnt = \relative c' {
  b\breve*11/16 s16 cis\breve*5/16 e2
}
tenorNotesAnt = \relative g {
  gis\breve*11/16 s16 fis\breve*5/16 b2
}
bassNotesAnt = \relative c {
  e\breve*11/16~ s16 e\breve*5/16~ 2
}
