\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "12"
antKeysig = \key e \major
psalmnum = "Magnificat"
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
  To -- day
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  we cel -- e -- brate the feast of Pen -- te -- cost, al -- le -- lu -- ia:
  on this day the Ho -- ly Spir -- it ap -- peared be -- fore the a -- pos -- tles in
  tongues of fire and gave them his spir -- i -- tual gifts. He sent
  them out to preach to the whole world, and to pro -- claim that
  all who be -- lieve and are bap -- tized shall be saved,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 e8 fis4( gis)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak gis8
  \allowBreak gis[ a]
  \allowBreak gis
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis([ a] gis4)
  \allowBreak fis8
  \allowBreak e
  \allowBreak gis
  \allowBreak gis4 \bar "'"
  \allowBreak fis8
  \allowBreak e
  \allowBreak gis[ fis]
  \allowBreak fis4 \bar ","
  \allowBreak e8
  \allowBreak fis[ gis]
  \allowBreak gis4
  \allowBreak gis8
  \allowBreak gis
  \allowBreak fis
  \allowBreak a
  \allowBreak gis
  \allowBreak gis
  \allowBreak fis[ gis]
  \allowBreak fis
  \allowBreak e
  \allowBreak fis
  \allowBreak gis
  \allowBreak a4
  \allowBreak gis8
  \allowBreak fis
  \allowBreak e[ gis]
  \allowBreak fis
  \allowBreak gis4 \bar "'"
  \allowBreak gis8
  \allowBreak b[ cis b]
  \allowBreak b4
  \allowBreak gis8
  \allowBreak a
  \allowBreak a
  \allowBreak gis
  \allowBreak fis4 \bar "|"
  \allowBreak r8
  \allowBreak e8
  \allowBreak fis[ gis]
  \allowBreak gis8
  \allowBreak gis4
  \allowBreak fis8
  \allowBreak e[ fis]
  \allowBreak e
  \allowBreak dis
  \allowBreak cis[ dis e]
  \allowBreak e4 \bar "'"
  \allowBreak e8
  \allowBreak cis
  \allowBreak e
  \allowBreak e4( fis)
  \allowBreak fis8
  \allowBreak e
  \allowBreak gis
  \allowBreak a
  \allowBreak b
  \allowBreak b
  \allowBreak gis
  \allowBreak b
  \allowBreak cis4
  \allowBreak b8
  \allowBreak a
  \allowBreak gis4( fis) \bar "'"
  \allowBreak e8
  \allowBreak e[ fis]
  \allowBreak gis([ fis gis] fis4 e8)
  \allowBreak e4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 s4 s4. s16 e\breve*5/16~ e~ 2 cis4~ \breve*5/16
  e\breve*10/16 cis\breve*6/16 e2~
  2.~ 2. cis4. b4~ \breve*5/16~
  4. cis2~ 2.~ 4~ \breve*5/16
  e\breve*7/16~ 2 cis\breve*5/16~ 4 b\breve*6/16~
  b4
}
tenorNotesAnt = \relative g {
  gis4 a4( b4.)~ s16 b\breve*5/16 cis gis4 b a4~ \breve*5/16
  b\breve*10/16 a\breve*6/16~ 2
  gis4. b gis2. e4. dis4 gis\breve*5/16~
  gis4.~ 2 e4. gis4.~ 4 a\breve*5/16
  gis\breve*7/16 a4 gis a\breve*5/16~ 4~ a\breve*6/16
  gis4
}
bassNotesAnt = \relative c {
  e4~ e~ 4.~ s16 e\breve*5/16~ e~ 2 a4 a,\breve*5/16
  e'\breve*10/16 a\breve*6/16 cis,2
  e2.~ 2.
  \shape #'((0 . 0) (0 . 0) (-2 . 0) (-2 . 0)) ~
  << {\hideNotes \once \override NoteColumn.force-hshift = 1
      e4. \unHideNotes }
     \new Voice { \voiceTwo a,4. } >>
  b4 e\breve*5/16~
  e4. cis2~ 2.~ 4 a\breve*5/16
  e'\breve*7/16~ 2 a\breve*5/16 a,4 e'\breve*6/16~
  e4
}
