\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "26"
antKeysig = \key aes \major
psalmnum = "Ps_124"
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
  Let the moun -- tains break out with joy
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and the hills with
  an -- swer -- ing glad -- ness, for the world's true light, the Lord,
  comes with pow -- er and might.
}
sopNotesAnt = \relative e' {
  f8 des f[ aes] aes bes[ aes] g aes f4
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  \allowBreak f8
  \allowBreak aes
  \allowBreak bes4
  \allowBreak aes8
  \allowBreak g
  \allowBreak aes
  \allowBreak f
  \allowBreak f[ ees]
  \allowBreak ees4 \bar ","
  \allowBreak des8
  \allowBreak ees
  \allowBreak ees[ f]
  \allowBreak f4
  \allowBreak f8[ ees]
  \allowBreak des
  \allowBreak ees4 \bar "'"
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak g
  \allowBreak aes
  \allowBreak f
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4^"Different psalm tone. Does it work?" ees4. ees2 f4 s16
  ees4 des2. bes2 des4 c2 des4 s8 \parenthesize aes4
  des4.~ des4.~ des4
}
tenorNotesAnt = \relative g {
  aes4 aes4. g2 aes4~ s16
  aes4 aes2. g2 aes4~ aes2~ aes4.~ aes4
  f4. bes4 aes8 f4
}
bassNotesAnt = \relative c {
  des4 c4. ees2 des4 s16
  c4 bes4. des4. ees2 f4 aes,2
  bes4. c4 des4.~ des4.~ des4
}
