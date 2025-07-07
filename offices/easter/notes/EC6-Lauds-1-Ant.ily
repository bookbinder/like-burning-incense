\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Ps_51"
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
  Lord, __ 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  wash a -- way my guilt, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis8([ fis] gis[ fis e] dis4)
  \noBreak \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8[ e]
  \allowBreak dis
  \allowBreak cis[ gis']
  \allowBreak fis
  \allowBreak gis4 \bar "'"
  \allowBreak gis8
  \allowBreak gis[ fis]
  \allowBreak fis[ e dis]
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  dis\breve*7/16 s16 b4. cis\breve*8/16~ cis4. b4
}
tenorNotesAnt = \relative g {
  gis\breve*7/16 s16 fis4. gis\breve*8/16~ gis4.~ gis4
}
bassNotesAnt = \relative c {
  b\breve*7/16~ s16 b4. e\breve*8/16 gis,4.~ gis4
}
