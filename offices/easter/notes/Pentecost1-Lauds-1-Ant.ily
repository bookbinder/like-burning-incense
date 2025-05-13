\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "14"
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
  O Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  how good and gen -- tle is your Spi -- rit in us, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 e8 fis4( gis)
  \noBreak \hideNotes gis16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak b[ gis]
  \allowBreak gis4
  \allowBreak e8
  \allowBreak fis
  \allowBreak a4
  \allowBreak a8
  \allowBreak gis
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  e \bar "||"
}
altoNotesAnt = \relative c' {
  s2. s16 s8 e4.~ e2.~ e2 cis\breve*5/16 b2
}
tenorNotesAnt = \relative g {
  gis4 a4( b4.)~ s16 b4. gis2. a2~ a\breve*5/16~ a4 gis
}
bassNotesAnt = \relative c {
  e4~ e4~ e4.~ s16 e4.~ e2. cis2 a\breve*5/16 e'2
}
