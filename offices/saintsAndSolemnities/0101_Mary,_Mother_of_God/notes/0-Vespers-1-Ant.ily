\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "14"
antKeysig = \key e \major
psalmnum = "Ps_113"
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
  O mar -- ve -- lous ex -- change!
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Man's Cre -- a -- tor has be -- come man,
  born of a vir -- gin. We have been made shar -- er in the di -- vin -- i -- ty of Christ
  who hum -- bled him -- self to share in our hu -- man -- i -- ty.
}
sopNotesAnt = \relative e' {
  \allowBreak e4( dis8[ e] cis4 b8)
  \allowBreak e
  \allowBreak fis
  \allowBreak fis
  \allowBreak gis
  \allowBreak e4
  \noBreak \hideNotes e16 \unHideNotes
  \allowBreak e8[ gis]
  \allowBreak gis
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak gis
  \allowBreak a[ gis]
  \allowBreak gis4( fis) \bar "'"
  \allowBreak e4
  \allowBreak gis8
  \allowBreak b
  \allowBreak a[ gis fis e]
  \allowBreak e4
  \allowBreak r4 \bar "|"
  \allowBreak fis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak fis4
  \allowBreak e8[ fis]
  \allowBreak e
  \allowBreak e
  \allowBreak e
  \allowBreak dis
  \allowBreak cis[ dis]
  \allowBreak e
  \allowBreak dis
  \allowBreak cis
  \allowBreak b4 \bar "'"
  \allowBreak b8[ cis]
  \allowBreak e
  \allowBreak e
  \allowBreak e
  \allowBreak fis([ gis] fis4)
  \allowBreak fis8
  \allowBreak gis[ b]
  \allowBreak gis
  \allowBreak fis
  \allowBreak gis
  \allowBreak e
  \allowBreak e
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2 s4. s2 s4 s16 gis\breve*10/16
  cis2 e2~ e\breve*8/16 b\breve*5/16 cis2.
  s\breve*5/16 s4 b4 gis4. cis\breve*5/16 b4. cis4
  a4 gis4
}
tenorNotesAnt = \relative g {
  gis2 fis4. a2 gis4 s16 e\breve*10/16~
  e2
  \shape #'((0 . -1) (-1 . -1) (-2 . -1) (-3 . -1))
  ~
  << {\hideNotes e2 \unHideNotes} \new Voice {\voiceOne gis2} >>
  cis4 a gis2 fis\breve*5/16 gis2.~
  gis\breve*5/16 fis2 e4.~ e\breve*5/16~ e4.~ e4~
  e2
}
bassNotesAnt = \relative c {
  e2 dis4. cis2 e4~ s16
  << { \hideNotes e\breve*10/16 \unHideNotes }
     \new Voice { \voiceTwo gis,\breve*10/16 }
   >>
  a2 e'2~ e\breve*8/16 dis\breve*5/16 cis2.
  e\breve*5/16 dis2 cis4. a\breve*5/16 gis4. a4 e2
}
