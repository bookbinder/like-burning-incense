\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "31"
antKeysig = \key ges \major
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = f


text = \lyricmode {
  \set includeGraceNotes = ##t
  Praise to our King,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the Son of Da -- vid, the Re -- dee -- mer of the world;
  praise to the Sav -- ior whose com -- ing had been fore -- told
  by the pro -- phets.
}
sopNotesAnt = \relative e' {
  aes4 aes8 ges ges4( f)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak bes4
  \allowBreak aes8
  \allowBreak aes
  \allowBreak aes
  \allowBreak ges[ aes]
  \allowBreak aes
  \allowBreak ges
  \allowBreak aes
  \allowBreak des,4 \bar ","
  \allowBreak des8[ ees]
  \allowBreak des
  \allowBreak des
  \allowBreak ces[ ees ges]
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ees
  \allowBreak f
  \allowBreak ees
  \allowBreak ees
  \allowBreak f
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ees
  \allowBreak ees[ des]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des2~ \breve*5/16~ s16 des4. ees\breve*5/16 des
  s4 s2 ces2.~ \breve*5/16 des2 aes
}
tenorNotesAnt = \relative g {
  f4 bes aes\breve*5/16 s16 f4. ges\breve*5/16~ ges
  f4~
  << {\hideNotes \once \override NoteColumn.force-hshift = 0 f2 \unHideNotes}
     \new Voice {\voiceOne aes2} >>
  ges2.~ \breve*5/16~ 2~ 4 aes
}
bassNotesAnt = \relative c {
  des2~ \breve*5/16~ s16 des4. ces\breve*5/16 bes
  des4 f2 ees2. ces\breve*5/16 bes2 des
}
