\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "60"
antKeysig = \key ges \major
psalmnum = "Ps_122"
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
  Af -- ter three days,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Je -- sus was found in the tem -- ple, sit -- ting in the midst
  of the doc -- tors, lis -- ten -- ing to them and ask -- ing them
  ques -- tions.
}
sopNotesAnt = \relative e' {
  des8 des ees[ des] des4
  \noBreak \hideNotes des16 \unHideNotes
  \allowBreak des8[ aes']
  \allowBreak aes
  \allowBreak aes
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak ges
  \allowBreak ges[ f]
  \allowBreak f4 \bar "'"
  \allowBreak aes8[ bes]
  \allowBreak aes
  \allowBreak aes
  \allowBreak aes
  \allowBreak aes4
  \allowBreak ges8
  \allowBreak aes
  \allowBreak des,4
  \allowBreak des \bar ","
  \allowBreak ees8
  \allowBreak ees
  \allowBreak ees
  \allowBreak des
  \allowBreak ees4
  \allowBreak f8
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ees
  \allowBreak ees[ des]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 s2 s16 des\breve*8/16~ des2~ des4.~ des4 bes2 aes2
  ces\breve*7/16~ ces2 aes2
}
tenorNotesAnt = \relative g {
  bes4
  << {\hideNotes f2~ \unHideNotes} \new Voice { \voiceOne aes2 } >>
  s16 f2 bes2 aes2~ aes4.~
  aes4 ges2~ ges4 f ges\breve*7/16~ ges2~ ges4 f
}
bassNotesAnt = \relative c {
  ges'4 f2 s16 des\breve*8/16~ des2 f4.~
  f4 ges2 des2 ces\breve*7/16 aes2 des2
}
