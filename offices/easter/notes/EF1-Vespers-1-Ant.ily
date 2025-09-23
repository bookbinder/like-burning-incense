\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "51"
antKeysig = \key f \minor
psalmnum = "Ps_110_1-5,_7"
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
  God raised up Christ from the dead
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and gave him a place at his right hand in heav -- en,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  c4 c8[ des] bes ees4 f8 aes aes4( g)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak ees8
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak ees
  \allowBreak f[ ees]
  \allowBreak des
  \allowBreak ees
  \allowBreak f4
  \allowBreak f8
  \allowBreak ees
  \allowBreak des[ c]
  \allowBreak c4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ des]
  \allowBreak c4 c \bar "||"
}
altoNotesAnt = \relative c' {
  s4^"Different psalm tone. Does it work?" s4. s2 s\breve*5/16 s16
  des\breve*8/16 bes2~ 4 aes4. bes4~ bes aes
}
tenorNotesAnt = \relative g {
  ees4 f4. aes2 bes\breve*5/16 s16 aes\breve*8/16
  f2~ 4~ 4. des4 f2
}
bassNotesAnt = \relative c {
  aes4 des4. c2 ees\breve*5/16 s16 f\breve*8/16
  \shape #'((0 . 0)(0 . 0)(1 . 0)(1 . 0)) ~
  << {\hideNotes f2 \unHideNotes }
     \new Voice { des2 } >>
  f,4~ 4.~ 4~ 2
}
