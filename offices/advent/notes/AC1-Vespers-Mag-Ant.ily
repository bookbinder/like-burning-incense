\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "52"
antKeysig = \key f \minor
psalmnum = "Magnificat"
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
  Are you the One whose co -- ming was fore -- told, 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  or should we look for a -- no -- ther? Tell John what you see:
  the blind have their sight re -- stored, the dead are raised
  to life, the poor have the good news preached to them,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 c8 f[ g] f f4 f8 ees[ f] ees ees ees ees4( c)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak c8
  \allowBreak c
  \allowBreak c
  \allowBreak f([ g] aes4)
  \allowBreak f8
  \allowBreak aes
  \allowBreak bes[ aes g]
  \allowBreak g4
  \allowBreak r4 \bar "|"
  \allowBreak g8[ aes]
  \allowBreak f[ c']
  \allowBreak bes
  \allowBreak aes
  \allowBreak bes4 \bar ","
  \allowBreak bes8
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak aes
  \allowBreak bes
  \allowBreak aes
  \allowBreak f4 \bar "'"
  \allowBreak f8
  \allowBreak aes
  \allowBreak aes
  \allowBreak bes
  \allowBreak aes
  \allowBreak f4 \bar "'"
  \allowBreak g8
  \allowBreak aes4
  \allowBreak g8
  \allowBreak f
  \allowBreak g[ aes g]
  \allowBreak g4
  \allowBreak f8[ c']
  \allowBreak c
  \allowBreak bes4 \bar "'"
  \allowBreak bes8
  \allowBreak aes[ f]
  \allowBreak g([ aes] g4 f8)
  \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
  r8 c8~ c2.~ c\breve*12/16 s16 ees2~ ees4~ ees4.~ ees2~ ees4
  c2 f4. c2. des4. ees2 des4. c2 ees\breve*5/16 f4. ees4.
  c4 des\breve*5/16 c4  
}
tenorNotesAnt = \relative g {
  g4 f2. g\breve*5/16 s16 f4( g2) s8 f2 aes4 g4. bes2
  c4 aes2~ aes4.~ aes2.~ aes4.~ aes2~ aes4.~ aes2
  bes\breve*5/16 aes4. g4. aes4 bes\breve*5/16 aes4
}
bassNotesAnt = \relative c {
  ees4 aes,2. c\breve*5/16~ s16 c2. s8 aes2 c4 ees4.~ ees2
  c4 f2 des4. aes2. bes4. c2 des4. f2
  ees\breve*5/16~ ees2. f4~ f\breve*5/16~ f4
}
