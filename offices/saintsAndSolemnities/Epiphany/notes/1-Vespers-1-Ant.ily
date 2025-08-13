\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "79"
antKeysig = \key e \major
psalmnum = "Ps_110_1-5,_7"
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
  He comes in splen -- dor,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the King who is our peace; he is su -- preme o -- ver all
  the kings of the earth.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak gis8
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak gis[ fis]
  \allowBreak fis4
  \noBreak \hideNotes fis16 \unHideNotes
  \allowBreak e8
  \allowBreak fis[ a]
  \allowBreak a
  \allowBreak fis
  \allowBreak a
  \allowBreak a4( gis) \bar ","
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak fis[ e]
  \allowBreak e
  \allowBreak e
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak fis([ gis] a4)
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*5/16 s s16 e\breve*5/16~ 2 dis2
  cis2~ 4. e2.~ 4
}
tenorNotesAnt = \relative g {
  b\breve*5/16 a s16 cis\breve*5/16 b2 gis~
  2 fis4. a2. gis4
}
bassNotesAnt = \relative c {
  e\breve*5/16~ e~ s16 e\breve*5/16~ 2 b
  cis a4. cis2. e4
}
