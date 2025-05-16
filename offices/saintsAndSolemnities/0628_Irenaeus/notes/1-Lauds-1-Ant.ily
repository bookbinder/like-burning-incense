\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "16"
antKeysig = \key e \major
psalmnum = "Ps_63_2-9"
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
  I -- re -- nae -- us,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  true to his name, made peace the aim and ob -- ject of his life,
  and he la -- bored stren -- u -- ous -- ly for the peace of the Church.
}
sopNotesAnt = \relative e' {
  cis8 b e[ cis] cis4
  \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak e8[ fis]
  \allowBreak e
  \allowBreak fis
  \allowBreak fis4( gis)
  \allowBreak e8[ gis]
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis
  \allowBreak a
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis4( gis) \bar ","
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak fis4
  \allowBreak e8
  \allowBreak cis8
  \allowBreak b4
  \allowBreak cis8
  \allowBreak e
  \allowBreak fis([ gis] fis4)
  \allowBreak fis8
  \allowBreak fis
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2. s16 s2 s2 s4 s\breve*9/16
  e\breve*7/16 cis4.~ cis2 s2 cis2. b4
}
tenorNotesAnt = \relative g {
  gis2. s16 cis2 b gis4 b\breve*9/16~
  b\breve*7/16 a4.~ a2~ a2~ a2. gis4
}
bassNotesAnt = \relative c {
  e2.~ s16 e2~ e2~ e4~ e\breve*9/16~
  e\breve*7/16 a4. a,2 e'2~ e2.~ e4
}
