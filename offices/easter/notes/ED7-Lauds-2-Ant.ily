\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Ezek_36_24-28"
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
  I will pour
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  clean -- sing wa -- ter u -- pon you, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis4 b8 e([ dis cis] b4)
  \noBreak \hideNotes b16 \unHideNotes
  \allowBreak cis8[ e]
  \allowBreak e
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis4 \bar "'"
  \allowBreak gis8
  \allowBreak fis[ gis]
  \allowBreak cis,([-- dis] e[ dis cis])
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*8/16 s16 cis\breve*14/16 gis\breve*5/16~ gis4
}
tenorNotesAnt = \relative g {
  gis\breve*8/16 s16 fis\breve*14/16~ fis\breve*5/16 e4
}
bassNotesAnt = \relative c {
  e\breve*8/16 s16 a,\breve*14/16 cis\breve*5/16~ cis4
}
