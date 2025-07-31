\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "48"
antKeysig = \key aes \major
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
  The King of heav -- en hum -- bled him -- self
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  to be born of a vir -- gin, that he might re -- store man
  to the king -- dom he had lost.
}
sopNotesAnt = \relative e' {
  \allowBreak r8
  \allowBreak aes8
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak f4
  \allowBreak ees8
  \allowBreak f
  \allowBreak ees
  \allowBreak des
  \allowBreak ees4
  \noBreak \hideNotes ees16 \unHideNotes
  \allowBreak ees8
  \allowBreak f
  \allowBreak des[ f]
  \allowBreak aes
  \allowBreak aes
  \allowBreak bes[ aes]
  \allowBreak aes4 \bar "'"
  \allowBreak aes8
  \allowBreak aes
  \allowBreak f
  \allowBreak aes
  \allowBreak bes[ c bes]
  \allowBreak bes4
  \allowBreak aes8
  \allowBreak aes
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak f
  \allowBreak ees
  \allowBreak ees4( des) \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*5/16~ des2. c2 s16 des4 ees des2
  c2 f\breve*5/16 ees4 des4. c4 aes2
}
tenorNotesAnt = \relative g {
  f\breve*5/16 aes2.~ aes2~ s16 aes2 f
  \shape #'((1 . -0.5) (0 . 0) (-2 . 0) (-3 . -0.5))
  ~
  << {\hideNotes f2 \unHideNotes s\breve*5/16 s4 s4. s4} \new Voice {\voiceOne aes2~  aes\breve*5/16~ aes4~ aes4.~ aes4 } >>
   f2 
}
bassNotesAnt = \relative c {
  des\breve*5/16~ des2. aes2 s16 bes4 c des2
  f des\breve*5/16 c4 bes4. aes4 des2
}
