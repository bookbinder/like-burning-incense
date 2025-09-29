\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "50"
antKeysig = \key f \minor
psalmnum = "Phil_2_6-11"
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
  The Lord Je -- sus
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  hum -- bled him -- self by show -- ing o -- be -- dience e -- ven
  when this meant death, death on the cross.
}
sopNotesAnt = \relative e' {
  r8 f8 f[ aes] bes[ aes g] g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak g
  \allowBreak g[ f]
  \allowBreak f
  \allowBreak ees
  \allowBreak f
  \allowBreak g
  \allowBreak g[ aes g]
  \allowBreak g4 \bar ","
  \allowBreak g8
  \allowBreak aes
  \allowBreak g
  \allowBreak g--
  \allowBreak aes--
  \allowBreak bes4 \bar "'"
  \allowBreak c4
  \allowBreak f,8
  \allowBreak 8
  \allowBreak 4 \bar "||"
}
altoNotesAnt = \relative c' {
  c2 ees4.~ 4~ s16 ees2 des\breve*6/16 c\breve*5/16
  bes4. f'2 c4 bes aes
}
tenorNotesAnt = \relative g {
  aes2 g4. bes4 s16 aes2~ \breve*6/16 g\breve*5/16~
  4. aes2 ees f4
}
bassNotesAnt = \relative c {
  f2 ees4.~ 4 s16 c2 des\breve*6/16 ees\breve*5/16~
  4. des2 aes4 g f
}
