\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "39"
antKeysig = \key cis \minor
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
  The Vir -- gin has giv -- en birth to the Sav -- ior:
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  a flower has sprung from Jes -- se's stock and a star has
  ri -- sen from Ja -- cob. O God, we praise you.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak cis8
  \allowBreak e
  \allowBreak e
  \allowBreak dis
  \allowBreak e
  \allowBreak cis
  \allowBreak fis4
  \allowBreak gis8
  \allowBreak e
  \allowBreak dis[ e cis]
  \allowBreak cis4
  \noBreak \hideNotes cis16 \unHideNotes
  \allowBreak cis8
  \allowBreak e4
  \allowBreak cis8
  \allowBreak fis[ gis]
  \allowBreak e
  \allowBreak dis[ e]
  \allowBreak cis
  \allowBreak cis4 \bar ","
  \allowBreak cis8
  \allowBreak cis
  \allowBreak dis[ e]
  \allowBreak fis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak gis
  \allowBreak ais[ b gis]
  \allowBreak gis4 \bar ","
  \allowBreak gis8
  \allowBreak fis([ gis] fis4)
  \allowBreak e8
  \allowBreak e[ dis]
  \allowBreak dis4 \bar "||"
}
altoNotesAnt = \relative c' {
  gis\breve*7/16 b2 s2. s16 gis4. b4.
  s\breve*7/16 dis4.~ 2 e2.
  \parenthesize b4 cis4. b2
}
tenorNotesAnt = \relative g {
  e\breve*7/16 dis2
  % << { \hideNotes e2.~ \unHideNotes } \new Voice { \voiceOne gis2. } >>
  gis2.
  s16 e4. dis4.
  gis\breve*7/16 b4.~ 2~ 2.~
  4 gis4.~ 2
}
bassNotesAnt = \relative c {
  cis\breve*7/16 b2
  \tieUp
  e2. \shape #'((2.5 . -0.75) (2.5 . -0.75) (-0.5 . -0.75) (-0.5 . -0.75)) ~
  s16
  << { \hideNotes e4. \unHideNotes } \new Voice { \voiceTwo cis4. } >>
  \tieDown
  b4.
  e\breve*7/16 b4.~ 2 e2.
  dis4 cis4. gis2
}
