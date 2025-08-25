\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "14"
antKeysig = \key e \major
psalmnum = "Rev_15_3-4"
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
  A won -- drous mys -- ter -- y
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  is de -- clared to us to -- day: the Cre -- a -- tor of the
  u -- ni -- verse has washed a -- way our sins in the
  wa -- ter of the Jor -- dan.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak e8
  \allowBreak fis
  \allowBreak gis
  \allowBreak a
  \allowBreak gis
  \allowBreak gis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8
  \allowBreak fis
  \allowBreak fis[ a]
  \allowBreak a
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis4( gis) \bar ","
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak dis
  \allowBreak cis
  \allowBreak cis
  \allowBreak b
  \allowBreak b
  \allowBreak b
  \allowBreak e[ gis]
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis
  \allowBreak a4
  \allowBreak gis8
  \allowBreak a
  \allowBreak b
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis[ e]
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2 e2.~ s16 e\breve*5/16~ 2 dis4
  cis\breve*5/16 s2 b\breve*5/16 e2 b4
  cis a gis
}
tenorNotesAnt = \relative g {
  gis2 b2. s16 cis\breve*5/16 b2~ 4
  gis\breve*5/16 fis2 gis\breve*5/16 e2~ 4~
  4~ 2
}
bassNotesAnt = \relative c {
  e2~ 2.~ s16 e\breve*5/16~ 2 b4
  cis\breve*5/16 dis2 e\breve*5/16
  \shape #'((0 . 0) (0 . 0) (1 . 0) (1 . 0)) ~
  << {\hideNotes e2 \unHideNotes}
     \new Voice {\voiceTwo cis2 } >>
   gis4
  a e2
}
