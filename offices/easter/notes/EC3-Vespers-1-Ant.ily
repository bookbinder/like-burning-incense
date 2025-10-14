\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "12"
antKeysig = \key e \major
psalmnum = "Ps_125"
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
  Peace be with you;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  it is I, do not be a -- fraid, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis4 a8 fis[ e] e4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8
  \allowBreak a
  \allowBreak gis4 \bar ","
  \allowBreak gis8
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak cis[-- e]
  \allowBreak \breathe
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
  e4. cis2. s16 e4. cis\breve*7/16~ 4 b2
}
tenorNotesAnt = \relative g {
  b4. a2. s16 b4. a\breve*7/16~ 4~ 4 gis
}
bassNotesAnt = \relative c {
  e4.~ 2.~ s16 e4. a\breve*7/16 a,4 e'2
}
