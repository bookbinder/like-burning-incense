\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "50"
antKeysig = \key f \minor
psalmnum = "Ps_149"
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
  Ma -- ry has giv -- en birth to a King
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  whose name is e -- ver -- last -- ing; hers the joy of moth -- er -- hood,
  hers the vir -- gin's glo -- ry.
  Nev -- er was the like seen be -- fore, nev -- er shall it be seen a -- gain,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak g
  \allowBreak aes
  \allowBreak f
  \allowBreak g[ f]
  \allowBreak ees
  \allowBreak g
  \allowBreak g4( f)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak f8
  \allowBreak ees[ f]
  \allowBreak f
  \allowBreak f
  \allowBreak aes
  \allowBreak f[ g f ees]
  \allowBreak ees4
  \allowBreak r4 \bar "|"
  \allowBreak f4
  \allowBreak f8
  \allowBreak g[ aes]
  \allowBreak bes
  \allowBreak c[ des]
  \allowBreak c
  \allowBreak c4 \bar ","
  \allowBreak bes4
  \allowBreak aes8
  \allowBreak g[ aes]
  \allowBreak g
  \allowBreak g[ f]
  \allowBreak f4
  \allowBreak r4 \bar "|"
  \allowBreak f8[ g]
  \allowBreak f
  \allowBreak ees
  \allowBreak f
  \allowBreak g[ aes]
  \allowBreak bes[ c]
  \allowBreak bes
  \allowBreak bes4 \bar ","
  \allowBreak aes8
  \allowBreak bes
  \allowBreak aes
  \allowBreak g
  \allowBreak aes
  \allowBreak g[ aes]
  \allowBreak g
  \allowBreak f4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak f4
  \allowBreak f \bar "||"
}
altoNotesAnt = \relative c' {
  c2. ees2 s\breve*5/16 s16 c4. ees4 c2
  bes2 des2. ees\breve*5/16~ ees2. c
  s\breve*5/16 ees4 f4. ees4~ ees\breve*5/16~ ees4. c4.
  bes4 des c
}
tenorNotesAnt = \relative g {
  aes2. bes2
  << {\hideNotes aes\breve*5/16~ \unHideNotes }
     \new Voice {\voiceOne c\breve*5/16} >>
  s16 aes4.~ 4~ 2
  g2 aes2.~ \breve*5/16 g4. bes4. aes2.
  \shape #'((1.5 . -0.5) (1.5 . -0.5) (-5 . -0.5) (-5 . -0.5)) ~
  << {\hideNotes aes\breve*5/16 \unHideNotes }
     \new Voice { \voiceOne c\breve*5/16 } >>
  bes4 aes4. g4 aes\breve*5/16 bes4. aes4.
  g4 aes2
}
bassNotesAnt = \relative c {
  f2. ees2 aes\breve*5/16 s16 aes,4. c4 ees2~
  2 des2. aes\breve*5/16 ees'2. f
  aes\breve*5/16 ees4~ 4.~ 4 c\breve*5/16 ees4. f~
  4~ 2
}
