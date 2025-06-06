\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "42"
antKeysig = \key cis \minor
psalmnum = "Ps_150"
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
  Your all -- pow -- er -- ful Word, O Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  will come to earth from his throne of glo -- ry,
  al -- le -- lu -- ia.  
}
sopNotesAnt = \relative e' {
  cis8 dis e dis cis dis[ cis] b cis4( gis')
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak fis4
  \allowBreak fis8
  \allowBreak e[ fis]
  \allowBreak gis([ fis] gis4)
  \allowBreak fis8
  \allowBreak e8([ dis] e[ gis fis])
  \allowBreak fis4 \bar "'"
  \allowBreak e8
  \allowBreak dis8[ fis]
  \allowBreak e[ dis cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*8/16 cis\breve*5/16 s16 e4. dis4.~ dis4
  cis4 b4. cis\breve*8/16 b4 gis4.~ gis4
}
tenorNotesAnt = \relative g {
  e\breve*5/16 fis4. gis\breve*5/16 s16 b4.~ b4.~ b4
  gis4~ gis4. a\breve*8/16 fis4~ fis4. e4
}
bassNotesAnt = \relative c {
  cis\breve*5/16 b4. e\breve*5/16~ s16 e4. b4.~ b4
  e4~ e4. a,\breve*8/16 b4 cis4.~ cis4
}
