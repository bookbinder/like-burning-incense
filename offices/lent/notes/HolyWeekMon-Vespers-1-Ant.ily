\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "43"
antKeysig = \key cis \minor
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
  He had nei -- ther beau -- ty, nor ma -- je -- sty,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  noth -- ing to at -- tract our eyes.
}
sopNotesAnt = \relative e' {
  cis8[ dis] e dis b cis[ gis'] gis gis gis fis fis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak e8[ fis]
  \allowBreak e
  \allowBreak e
  \allowBreak e
  \allowBreak dis
  \allowBreak b
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis4. a4 cis2~ 2 s16 b\breve*5/16~ 4 gis
}
tenorNotesAnt = \relative g {
  e4. fis4 e2~ 2~ s16 e\breve*5/16 fis4 e
}
bassNotesAnt = \relative c {
  cis4.~ 4~ 2 a s16 gis\breve*5/16~ 4 cis
}
