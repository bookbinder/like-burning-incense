\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "26"
antKeysig = \key aes \major
psalmnum = "Ps_119_145-152"
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
  The words I have spo -- ken to you
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  are spi -- rit and life, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 ees8 aes4 g8 aes f g f ees4
  \noBreak \hideNotes ees16 \unHideNotes
  \allowBreak ees8
  \allowBreak des
  \allowBreak f
  \allowBreak aes
  \allowBreak g[-- aes]
  \allowBreak \breathe
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  ees \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*9/16~ c4. s16 des2.~ des4 bes2
}
tenorNotesAnt = \relative g {
  ees\breve*9/16 aes4.~ s16 aes2.~ aes4~ aes g
}
bassNotesAnt = \relative c {
  aes\breve*9/16~ aes4. s16 f'2. des4 ees2
}
