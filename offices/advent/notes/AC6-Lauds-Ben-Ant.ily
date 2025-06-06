\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "14"
antKeysig = \key e \major
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
  Guard what is good 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and che -- rish what is true, for our
  sal -- va -- tion is at hand.
}
sopNotesAnt = \relative e' {
  gis4 gis8 fis fis4( e)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak e8
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis4 \bar ","
  \allowBreak fis8
  \allowBreak gis
  \allowBreak a
  \allowBreak b4
  \allowBreak b8
  \allowBreak b
  \allowBreak b
  \allowBreak e,4 \bar "||"
}
altoNotesAnt = \relative c' {
  e2 cis\breve*5/16 s16 e\breve*10/16 dis4. cis4 e4
}
tenorNotesAnt = \relative g {
  b2 a\breve*5/16 s16 b\breve*5/16~ b\breve*5/16~ b4. a4 gis4
}
bassNotesAnt = \relative c {
  e2~ e\breve*5/16~ s16 e\breve*5/16 dis\breve*5/16 gis4. a4 e4
}
