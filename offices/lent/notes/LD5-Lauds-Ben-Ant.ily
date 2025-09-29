\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Benedictus"
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
  John bore tes -- ti -- mo -- ny to the truth,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and al -- though I have no need of hu -- man tes -- ti -- mo -- ny,
  says the Lord, I re -- mind you of this for your
  own sal -- va -- tion.
}
sopNotesAnt = \relative e' {
  cis4 b8[ cis] e dis cis cis b cis dis4( cis)
  \noBreak \hideNotes dis16 \unHideNotes
  \allowBreak e8
  \allowBreak fis
  \allowBreak fis[ gis]
  \allowBreak gis
  \allowBreak fis[ gis]
  \allowBreak gis4
  \allowBreak gis8[ b]
  \allowBreak b
  \allowBreak cis[ b gis]
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak fis4 \bar "'"
  \allowBreak e8
  \allowBreak e
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak e
  \allowBreak dis[ e]
  \allowBreak dis
  \allowBreak e
  \allowBreak fis4
  \allowBreak e8
  \allowBreak dis8[ cis]
  \allowBreak cis4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve s16 e4.~ 2 fis4.
  e\breve*12/16 cis\breve*8/16 b2~
  4. a4 gis
}
tenorNotesAnt = \relative g {
  gis\breve s16 b4.~ 2~ 4.
  gis\breve*12/16 a\breve*8/16 fis2
  dis4. e2
}
bassNotesAnt = \relative c {
  e\breve~ s16 e4.~ 2 dis4.
  cis\breve*12/16 a\breve*8/16 b2~
  4. cis2
}
