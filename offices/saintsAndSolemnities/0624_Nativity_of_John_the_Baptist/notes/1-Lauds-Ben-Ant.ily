\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "26"
antKeysig = \key aes \major
psalmnum = "Benedictus"
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
  The mouth of Ze -- cha -- ri -- ah was o -- pened,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and he spoke this pro -- phe -- cy:
  Bles -- sed be the Lord, the God of Is -- ra -- el.
}
sopNotesAnt = \relative e' {
  r8 ees8 ees[ f] ees des ees f4 f8 f f[ ees] ees4
  \noBreak \hideNotes ees16 \unHideNotes
  \allowBreak ees8
  \allowBreak ees
  \allowBreak g[ aes]
  \allowBreak bes
  \allowBreak aes
  \allowBreak aes
  \allowBreak g4 \bar ","
  \allowBreak aes8[ bes]
  \allowBreak aes
  \allowBreak g
  \allowBreak aes
  \allowBreak f4
  \allowBreak ees8
  \allowBreak des[ f]
  \allowBreak aes
  \allowBreak g
  \allowBreak f
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*7/16 des2 bes2 s16 ees4~ ees4.~ ees4~ ees4~ ees\breve*5/16
  des\breve*6/16 bes2
}
tenorNotesAnt = \relative g {
  aes\breve*7/16~ aes2 g2~ s16 g4 bes4. c4 bes4 aes\breve*5/16~
  aes\breve*6/16~ aes4 g
}
bassNotesAnt = \relative c {
  c\breve*7/16 des2 ees2~ s16 ees4~ ees4.~ ees4~ ees4 c\breve*5/16
  des\breve*6/16 ees2
}
