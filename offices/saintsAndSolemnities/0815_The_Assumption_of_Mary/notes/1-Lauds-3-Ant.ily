\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "28"
antKeysig = \key aes \major
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
  The Lord has made you so glo -- rious
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  that your praise will ne -- ver cease to re -- sound a -- mong men.
}
sopNotesAnt = \relative e' {
  r8 aes8 g[ aes] f f ees des4 ees8[ f ees des] des4
  \noBreak \hideNotes des16 \unHideNotes
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des[ f]
  \allowBreak aes
  \allowBreak bes4
  \allowBreak aes8
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak ees
  \allowBreak f[ ees]
  \allowBreak des
  \allowBreak ees[ f]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*5/16~ des2 c2 s4. s16 s4 des2.~
  des2~ des4. c4 des4
}
tenorNotesAnt = \relative g {
  f\breve*5/16 aes2~ aes2 f4. s16 aes4 f2.
  bes2 aes4.~ aes4 f4
}
bassNotesAnt = \relative c {
  des\breve*5/16~ des4 bes4 aes2 bes4. s16 c4 des2.~
  des2~ des4.~ des4~ des4
}
