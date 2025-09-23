\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "14"
antKeysig = \key e \major
psalmnum = "Ps_122"
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
  May the peace of Christ
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  fill your hearts with joy, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e8 fis gis[ a] gis fis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8[ gis]
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak e4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
  s4 s4. s4 s16 cis\breve*5/16 b4. cis4 b2
}
tenorNotesAnt = \relative g {
  gis4 b4. a4~ s16 a\breve*5/16 gis4. a4~ 4 gis
}
bassNotesAnt = \relative c {
  e4~ 4.~ 4~ s16 e\breve*5/16~ 4.~ 4~ 2
}
