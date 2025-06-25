\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Ps_149"
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
  A great pro -- phet
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  will come to Je -- ru -- sa -- lem; of that peo -- ple
  he will make a new cre -- a -- tion.
}
sopNotesAnt = \relative e' {
  r8 gis8 gis[ a] gis[ fis] fis4
  \noBreak \hideNotes fis16 \unHideNotes
  fis8 fis([ gis] a4) gis8 fis gis gis gis4 \bar ","
  gis8 fis[ gis] fis e e e dis e fis4 e8 dis[ cis] cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  e2 cis\breve*5/16 s16 e2. fis4 e4. cis4 cis2 b4~ b4. a4 gis4
}
tenorNotesAnt = \relative g {
  b2 a\breve*5/16~ s16 a2. b4~ b4. a4~ a2 fis4 dis4. e2
}
bassNotesAnt = \relative c {
  e2~ e\breve*5/16 s16 cis2. e4~ e4. a4 a,2 b4~ b4. cis2
}
