\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "14"
antKeysig = \key e \major
psalmnum = "Ps_45_2-10"
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
  Bles -- sed is he
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  who comes in the name of the Lord, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis4 gis8 fis fis4( e)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak e8
  \allowBreak fis[ a]
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis([-- gis] a4)
  \allowBreak gis8
  \allowBreak fis
  \allowBreak fis4( e) \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
  b2~ \breve*5/16 s16 cis2 e2. s\breve*5/16 cis4 b2
}
tenorNotesAnt = \relative c {
  e2~ \breve*5/16~ s16 e2 a2. gis\breve*5/16 a4~ 4 gis
}
bassNotesAnt = \relative c {
  e2 gis,\breve*5/16 s16 a2 cis2. e\breve*5/16~ 4~ 2
}
