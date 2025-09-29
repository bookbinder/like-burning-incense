\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "53"
antKeysig = \key gis \minor
psalmnum = "Ps_110_1-5,_7"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = ais
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  Christ was scourged
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and treat -- ed with con -- tempt, but God's
  right hand has raised him up.
}
sopNotesAnt = \relative e' {
  gis4 fis8 ais4( gis)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak gis
  \allowBreak ais
  \allowBreak ais([ fis] dis4) \bar ","
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis[ gis']
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  dis4. e\breve*5/16 s16 fis\breve*5/16 dis\breve*5/16 r4
  cis4 b4. cis b4
}
tenorNotesAnt = \relative g {
  b4.~ \breve*5/16~ s16 b\breve*5/16 ais\breve*7/16
  gis4~ 4.~ 4.~ 4
}
bassNotesAnt = \relative c {
  gis'4. e\breve*5/16 s16 dis\breve*5/16 fis\breve*7/16
  e4~ 4. cis4. gis4
}
