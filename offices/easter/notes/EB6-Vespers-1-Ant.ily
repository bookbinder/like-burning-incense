\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Ps_116_1-9"
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
  The Lord has res -- cued my life
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  from the grasp of hell, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 gis8 gis[ a] gis gis4 fis8 e fis([ gis] fis4)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8
  \allowBreak fis
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak dis([ e] fis4) \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  cis\breve*9/16~ cis~ s16 cis\breve*5/16 b4 gis2
}
tenorNotesAnt = \relative g {
  e\breve*9/16~ e s16 fis\breve*5/16~ 4~ 4 e
}
bassNotesAnt = \relative c {
  cis\breve*9/16 a~ s16 \breve*5/16 b4 cis2
}
