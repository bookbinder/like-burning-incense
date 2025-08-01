\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "39"
antKeysig = \key cis \minor
psalmnum = "Wis_9_1-6,_9-11"
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
  Lord, you have built your tem -- ple and al -- tar
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  on your ho -- ly moun -- tain, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  cis8[ e] dis e fis[ gis] fis gis4 gis8 fis e[ dis] dis4
  \noBreak \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak e
  \allowBreak cis[ gis']
  \allowBreak gis
  \allowBreak fis([ e] fis[ e dis])
  \allowBreak dis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ e]
  \allowBreak dis4
  dis \bar "||"
}
altoNotesAnt = \relative c' {
 s2 s4. b2~ b2. s16 gis4. cis\breve*5/16 b4. cis4~ cis 4  b4
}
tenorNotesAnt = \relative g {
  gis2 b4. e,2 fis2. s16 e4.~ e\breve*5/16 fis4. gis4~ gis2
}
bassNotesAnt = \relative c {
  e2 dis4. e2 b2.~ s16 b4.~ b\breve*5/16~ b4. e4 gis,2
}
