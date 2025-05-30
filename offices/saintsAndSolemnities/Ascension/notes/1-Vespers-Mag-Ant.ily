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
  O Vic -- tor King,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Lord of pow -- er and might, to -- day you have
  as -- cen -- ded a -- bove the hea -- vens. Do not
  leave us or -- phans, but send us the Fa -- ther's pro -- mised
  gift, the Spi -- rit of truth, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 ees8( aes4 g8) aes[ f g f] ees[ f] f4
  \noBreak \hideNotes f16 \unHideNotes
  \allowBreak f8[ g]
  \allowBreak aes
  \allowBreak f
  \allowBreak g
  \allowBreak f
  \allowBreak ees4 \bar ","
  \allowBreak f8
  \allowBreak c[-- f]
  \allowBreak f
  \allowBreak g
  \allowBreak aes
  \allowBreak bes[ c]
  \allowBreak bes
  \allowBreak bes
  \allowBreak aes([ c] des4)
  \allowBreak c8
  \allowBreak c[ bes]
  \allowBreak bes4 \bar "|"
  \allowBreak r8
  \allowBreak bes
  \allowBreak aes[ g]
  \allowBreak f[ aes]
  \allowBreak aes
  \allowBreak f[ g f ees]
  \allowBreak ees4 \bar ","
  \allowBreak f8[ aes]
  \allowBreak aes
  \allowBreak g
  \allowBreak f
  \allowBreak f[ g]
  \allowBreak f
  \allowBreak ees
  \allowBreak f
  \allowBreak f([ ees] c4) \bar "'"
  \allowBreak ees8
  \allowBreak f[ aes]
  \allowBreak aes
  \allowBreak aes
  \allowBreak g([-- aes] bes4) \bar "'"
  \allowBreak bes8
  \allowBreak aes[ g]
  \allowBreak f4
  f \bar "||"
}
altoNotesAnt = \relative c' {
  r8 ees8 c4. des2. c4 s16 ees4. c4.~ c4.~ c\breve*5/16
  f2 ees4 f4. ees2~ ees4 c\breve*5/16~ c2~
  c4 ees\breve*5/16 des\breve*5/16 c\breve*5/16 ees2
  f\breve*5/16 des4 c2
}
tenorNotesAnt = \relative g {
  bes4 aes4. bes2. aes4~ s16 aes4.~ aes4. g4. aes\breve*5/16~
  aes2~ aes4~ aes4. g2~ g4 aes\breve*5/16 g2~
  g4 aes\breve*5/16~ aes\breve*5/16 g\breve*5/16 aes2~
  aes\breve*5/16 bes4~ bes aes
}
bassNotesAnt = \relative c {
  g'4 f4.~ f2.~ f4 s16 c4. aes4. c4. f\breve*5/16
  des2 c4 bes4. ees2~ ees4 f\breve*5/16 c2~
  c4~ c\breve*5/16 des\breve*5/16 ees\breve*5/16 c2
  des\breve*5/16 bes4 f'2
}
