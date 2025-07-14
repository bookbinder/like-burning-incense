\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "22"
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
  Bles -- sed be the Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the God of Is -- ra -- el; he has raised up for us
  a migh -- ty sa -- vior, born of the house of his
  ser -- vant Da -- vid.
}
sopNotesAnt = \relative e' {
  aes8[ bes] aes g aes f([ ees] des4)
  \noBreak \noBreak \hideNotes des16 \unHideNotes
  \allowBreak des8
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak des[ f]
  \allowBreak bes
  \allowBreak aes4 \bar ","
  \allowBreak aes8
  \allowBreak aes
  \allowBreak bes[ c]
  \allowBreak bes
  \allowBreak c
  \allowBreak des
  \allowBreak des
  \allowBreak c
  \allowBreak bes
  \allowBreak bes[ aes]
  \allowBreak aes4 \bar "'"
  \allowBreak g8[ aes]
  \allowBreak f
  \allowBreak ees
  \allowBreak f4
  \allowBreak ees8
  \allowBreak des
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak des4
  \allowBreak des \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*5/16~^"Different psalm tone."
  des4~ des4. s16 s4. des4.~ des2 f\breve*8/16
  ees2 des\breve*8/16 c4. bes4 aes
}
tenorNotesAnt = \relative g {
  f\breve*5/16 aes4 f4. s16 aes4.~ aes4.~ aes2~ aes\breve*8/16~
  aes2 f\breve*8/16~ f4.~ f2
}
bassNotesAnt = \relative c {
  des\breve*5/16~ des4~ des4. s16 c4. f4.~ f2 des\breve*8/16
  c2 des\breve*8/16~ des4.~ des2
}
