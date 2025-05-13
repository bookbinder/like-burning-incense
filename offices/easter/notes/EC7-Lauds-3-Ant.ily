\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Ps_117"
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
  I am the way,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the truth and the life, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e4 b8 cis cis([ gis' a] gis4)
  \noBreak \hideNotes gis16 \unHideNotes
  gis8 fis[ gis] fis e dis([ e] fis4) \bar "'"
  dis8 e[ dis] cis4 cis \bar "||"
}
altoNotesAnt = \relative c' {
  s4 s4 s4. s4. s16 s2 dis\breve*5/16 b4 gis2
}
tenorNotesAnt = \relative g {
  gis4 fis gis4. b4.~ s16 b2~ b\breve*5/16 fis4~ fis e
}
bassNotesAnt = \relative c {
  cis4 dis e2. s16 dis2 b\breve*5/16~ b4 cis2
}
