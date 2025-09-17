\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "17"
antKeysig = \key cis \minor
psalmnum = "Isa_66_10-14a"
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
  Bless those, O Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  who have wai -- ted for your co -- ming;
  let your pro -- phets be proved true.
}
sopNotesAnt = \relative e' {
  gis4 gis8 fis fis4( e)
  \noBreak \noBreak \hideNotes e16 \unHideNotes
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak fis
  \allowBreak a
  \allowBreak a[ gis]
  \allowBreak gis4 \bar ","
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis4
  \allowBreak e8
  \allowBreak e
  \allowBreak cis[ e]
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  e4 dis cis2 s16 e4~ e4.~ e2.
  cis4~ cis2~ cis4 gis
}
tenorNotesAnt = \relative g {
  b4~ b4 gis2 s16 cis4 b4. a4 cis4 b4
  a4~ a2 e4~ e4
}
bassNotesAnt = \relative c {
  e4 b4 cis2~ s16 cis4 e4.~ e2. a4 a,2~ a4 e4
}
