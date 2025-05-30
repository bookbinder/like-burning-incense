\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "50"
antKeysig = \key f \minor
psalmnum = "Ps_113"
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
  I came forth from the Fa -- ther
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and have come in -- to the world; now I leave the world to
  re -- turn to the Fa -- ther, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  f4 ees8[ f] g([ aes] bes4) g8 aes bes4 bes
  \noBreak \hideNotes bes16 \unHideNotes
  \allowBreak bes8
  \allowBreak bes
  \allowBreak aes([ g] f4)
  \allowBreak ees8
  \allowBreak f
  \allowBreak g
  \allowBreak g4( f)
  \allowBreak r4 \bar "|"
  \allowBreak f8[ c']
  \allowBreak c
  \allowBreak bes
  \allowBreak aes
  \allowBreak bes([ c] bes4)
  \allowBreak bes8
  \allowBreak bes
  \allowBreak aes[ f]
  \allowBreak ees
  \allowBreak f
  \allowBreak g[ aes g f]
  \allowBreak f4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak f4
  f \bar "||"
}
altoNotesAnt = \relative c' {
  c2 ees2. f2. s16 ees2~ ees4. c2.
  f\breve*5/16~ f2. ees2 c2~ c4. bes4
  des4 c
}
tenorNotesAnt = \relative g {
  aes2 bes4 g2 aes2.~ s16 aes2 g4. aes2.
  f\breve*5/16 aes2.~ aes2 bes2 aes4. g4
  aes2
}
bassNotesAnt = \relative c {
  f2 ees2. des2. s16 c2~ c4. f2.
  aes,\breve*5/16 des2. c2 f2~ f4.~ f4~
  f2
}
