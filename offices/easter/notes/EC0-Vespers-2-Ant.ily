\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "11"
antKeysig = \key e \major
psalmnum = "Ps_116_10-19"
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
  Lord, you have bro -- ken the chains
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  that held me bound; I will of -- fer you a sac -- ri -- fice
  of praise, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  gis4 e8 fis a gis gis fis([ gis] fis4)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak e4 \bar "'"
  \allowBreak gis8
  \allowBreak a
  \allowBreak b[ cis]
  \allowBreak b
  \allowBreak gis[ b]
  \allowBreak b
  \allowBreak a
  \allowBreak gis
  \allowBreak fis
  \allowBreak e
  \allowBreak fis([ gis] fis4) \bar "'"
  \allowBreak fis8
  \allowBreak fis[ gis]
  \allowBreak e4
  \allowBreak e \bar "||"
}
altoNotesAnt = \relative c' {
  e\breve*7/16 cis\breve*7/16 s16 e2~
  \breve*6/16 cis2~ \breve*5/16 e4 b2
}
tenorNotesAnt = \relative g {
  b\breve*7/16 a s16 gis2
  e\breve*6/16~ 2 a\breve*5/16~ 4~ 4 gis
}
bassNotesAnt = \relative c {
  e\breve*7/16~ e~ s16 e2
  \shape #'((0 . 0) (1 . 0) (-3 . 0) (-3 . 0)) ~
  << {\hideNotes \once \override NoteColumn.force-hshift = 1
      e\breve*6/16 \unHideNotes }
     \new Voice {\voiceTwo gis,\breve*6/16 } >>
  a2~ \breve*5/16 cis4 e2
}
