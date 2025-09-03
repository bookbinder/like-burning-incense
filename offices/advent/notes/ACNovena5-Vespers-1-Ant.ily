\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "48"
antKeysig = \key f \minor
psalmnum = "Ps_87"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  To you, O Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  I lift up my soul; come and res -- cue me, for you are
  my re -- fuge and my strength.
}
sopNotesAnt = \relative e' {
  r8 c8 c[ des] bes ees([ f] aes4) 
  \noBreak \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak aes
  \allowBreak aes4( g) \bar ","
  \allowBreak g8[ aes]
  \allowBreak f
  \allowBreak g
  \allowBreak f
  \allowBreak ees4
  \allowBreak ees8
  \allowBreak des[ ees]
  \allowBreak des
  \allowBreak ees
  \allowBreak f4
  \allowBreak f8
  \allowBreak ees
  \allowBreak des
  \allowBreak des4( c) \bar "||"
}
altoNotesAnt = \relative c' {
  s4 s4. ees\breve*5/16 s16 c2 ees2 des4.~ des4 ees4.
  \parenthesize aes,2 bes\breve*5/16 aes2
}
tenorNotesAnt = \relative g {
  g4 f4. aes\breve*5/16~ s16 aes2 bes2~ bes4. aes4~ aes4.~
  aes2 f\breve*5/16~ f2
}
bassNotesAnt = \relative c {
  ees4 des4. c\breve*5/16 s16 f2 ees2 bes4. des4 c4.
  f2 des\breve*5/16 f,2
}
