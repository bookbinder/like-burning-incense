\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "43"
antKeysig = \key cis \minor
psalmnum = "Phil_2_6-11"
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
  Though he was the Son of God,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Christ learned o -- be -- dience through suf -- fer -- ing;
  and for all who o -- bey him, he has be -- come the source
  of life, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  e4 e8 b cis cis[ gis'] a gis4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak fis8[ gis]
  \allowBreak fis
  \allowBreak gis
  \allowBreak a4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis4 \bar ","
  \allowBreak fis8
  \allowBreak gis
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak dis
  \allowBreak e[ fis]
  \allowBreak fis4 \bar "'"
  \allowBreak fis8
  \allowBreak b,
  \allowBreak cis
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak dis
  \allowBreak e
  \allowBreak fis4 \bar "'"
  \allowBreak dis8
  \allowBreak e[ dis]
  \allowBreak cis4
  \allowBreak cis \bar "||"
}
altoNotesAnt = \relative c' {
  cis4. r4 cis4. e4 s16 cis2 e
  cis2~ 4 b2~ 4~ 4. s4 cis\breve*5/16
  b4.~ 4 gis2
}
tenorNotesAnt = \relative g {
  gis4. fis4 gis4. b4 s16 a2~ 2~
  2 e4~ 2~ 4 dis4.
  \shape #'((0 . 0) (0 . 0) (-2.2 . 0) (-2.2 . 0)) ~
  << {\hideNotes dis4 \unHideNotes }
     \new Voice {\voiceOne fis4 }>>
  gis\breve*5/16
  fis4.~ 4~ 4 gis
}
bassNotesAnt = \relative c {
  cis4. dis4 e4.~ 4 s16 a2 cis,
  a2~ 4 gis2 cis4 b4. dis4 cis\breve*5/16
  dis4. b4 cis2
}
