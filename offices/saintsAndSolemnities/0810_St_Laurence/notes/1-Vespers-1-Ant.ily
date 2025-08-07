\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "26"
antKeysig = \key aes \major
psalmnum = "Ps_116_1-9"
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
  By his mar -- tyr -- dom
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Law -- rence gave wit -- ness to our Lord Je -- sus Christ
  and gained the re -- ward of heav -- en.
}
sopNotesAnt = \relative e' {
  \allowBreak ees8
  \allowBreak f
  \allowBreak aes
  \allowBreak aes
  \allowBreak g4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak g8
  \allowBreak aes
  \allowBreak f
  \allowBreak g
  \allowBreak f
  \allowBreak f
  \allowBreak f
  \allowBreak ees4
  \allowBreak des8[ f]
  \allowBreak f
  \allowBreak ees([ f] ees4) \bar "'"
  \allowBreak ees8
  \allowBreak des
  \allowBreak f
  \allowBreak aes
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak g[ f ees]
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  ees4~ ees2 s16 des4.~ des2 c4 des4. s\breve*5/16
  des2. bes4.~ bes4
}
tenorNotesAnt = \relative g {
  aes4 bes2~ s16 bes4. aes2~ 4~ 4.~ \breve*5/16~
  2.~ 4. g4
}
bassNotesAnt = \relative c {
  c4 ees2 s16 bes4. des2 aes4 bes4. c\breve*5/16
  f4. des4. ees4.~ 4
}
