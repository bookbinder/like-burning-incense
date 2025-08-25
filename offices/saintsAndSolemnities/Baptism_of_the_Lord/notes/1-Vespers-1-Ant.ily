\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "43"
antKeysig = \key cis \minor
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
  The Fa -- ther's voice
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  re -- sound -- ed from the heav -- ens: This is my Son
  in whom I de -- light; lis -- ten to what he says to you.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak cis8
  \allowBreak cis[ e]
  \allowBreak dis
  \allowBreak dis4
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak dis8
  \allowBreak e
  \allowBreak dis
  \allowBreak cis
  \allowBreak b
  \allowBreak dis[ cis]
  \allowBreak cis4 \bar ","
  \allowBreak cis8[ gis']
  \allowBreak gis
  \allowBreak fis[ gis]
  \allowBreak gis([ a] gis4)
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis
  \allowBreak a
  \allowBreak a4( gis) \bar ","
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak e
  \allowBreak dis
  \allowBreak b
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*5/16 b\breve*7/16 s16 s2 cis4.~
  4 e\breve*5/16~ 4.~ 2 dis4. cis4 a gis
}
tenorNotesAnt = \relative g {
  e\breve*5/16 fis\breve*7/16 s16 e2
  \shape #'((0 . 0) (0 . -0.5) (-1 . -1.5) (-1.5 . -1))
  ( gis4.) ~
  4 b\breve*5/16 a4. cis4( b~) 4. gis4 fis e
}
bassNotesAnt = \relative c {
  cis\breve*5/16 b\breve*7/16 s16 cis2 e4.~
  4~ \breve*5/16~ 4.~ 2 b4. cis2~ 4
}
