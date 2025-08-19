\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "36"
antKeysig = \key ges \major
psalmnum = "Ps_63_2-9"
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
  The sol -- dier bap -- ti -- zes his king,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the ser -- vant his Lord, John his Sav -- ior;
  the wa -- ters of the Jor -- dan trem -- ble, a dove
  hov -- ers as a sign of wit -- ness, and the voice of
  the Fa -- ther is heard: This is my Son.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak des8
  \allowBreak des[ aes']
  \allowBreak aes
  \allowBreak aes
  \allowBreak bes4
  \allowBreak aes8
  \allowBreak ges
  \allowBreak ges4( aes)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8
  \allowBreak ges[ aes]
  \allowBreak ges
  \allowBreak f
  \allowBreak ees([ f] ges4) \bar "'"
  \allowBreak aes4
  \allowBreak ges8
  \allowBreak aes[ des,]
  \allowBreak des4 \bar "|"
  \allowBreak r8
  \allowBreak des8
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak ees
  \allowBreak f
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ees[ des]
  \allowBreak des4 \bar "'"
  \allowBreak des8
  \allowBreak ees([ f] ees4)
  \allowBreak ees8[ f]
  \allowBreak ees
  \allowBreak ees
  \allowBreak f
  \allowBreak ges[ f]
  \allowBreak ees
  \allowBreak ees[ des]
  \allowBreak des4 \bar ","
  \allowBreak des8
  \allowBreak des
  \allowBreak des[ aes']
  \allowBreak f
  \allowBreak ges
  \allowBreak bes4
  \allowBreak aes8
  \allowBreak ges
  \allowBreak ges4( aes) \bar ","
  \allowBreak ges4
  \allowBreak ges8
  \allowBreak ges[ aes]
  \allowBreak des,4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 des2~ 2~ 4~ 4. s16 bes2 des
  ees4. aes,2 s4 s\breve*8/16 s\breve*5/16 ces2~
  ces\breve*8/16 s2 s4 des2~ 2
  bes4( des~) 4. ces4 ges
}
tenorNotesAnt = \relative g {
  f2. ges2 ees4( f4.) s16 ges2~ 2~
  4.~ 4 \tieDown f4
  \shape #'((0 . 0) (0 . 0) (-2 . 0) (-2 . 0)) ~
  << {\hideNotes f4 \unHideNotes }
     \new Voice {\voiceOne aes4 } >>
  \tieUp
  bes\breve*8/16 aes\breve*5/16 ges2~
  \breve*8/16 f2 ges4 aes2 ges2~
  4( f) ges4. ees4 f4
}
bassNotesAnt = \relative c {
  des2.~ 2~ 4~ 4. s16 ees2 bes
  ces4. des2 f4 ges\breve*8/16 f\breve*5/16 c2~
  \breve*8/16 des2 ees4 f2 ges
  des bes4. ces4 des4
}
