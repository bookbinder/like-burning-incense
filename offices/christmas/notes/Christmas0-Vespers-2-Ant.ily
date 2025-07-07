\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "21"
antKeysig = \key aes \major
psalmnum = "Ps_147_12-20"
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
  He sends forth his word to the earth,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and his com -- mand spreads swift -- ly through the land.
}
sopNotesAnt = \relative e' {
  r8 aes8 aes[ bes] aes aes f[ aes] \allowBreak g
  \allowBreak f
  \allowBreak ees4
  \noBreak \noBreak \hideNotes ees16 \unHideNotes
  \allowBreak ees8
  \allowBreak ees
  \allowBreak ees
  \allowBreak f[ ees]
  \allowBreak des[ f]
  \allowBreak aes4
  \allowBreak g8
  \allowBreak f
  \allowBreak g
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  s2. s2 s4. s16 s4 des2~
  des\breve*5/16 bes4
}
tenorNotesAnt = \relative g {
  ees'2. c2 bes4. s16 aes4~ aes2~
  aes\breve*5/16 g4
}
bassNotesAnt = \relative c {
  c'2. aes2 g4. s16 c,4 des2
  bes\breve*5/16 ees4
}
tiedNotes = \relative c' {
  \hideNotes
  \voiceFour
  \tieUp
  c2.\shape #'((2 . -0.5) (2 . -0.5) (0 . -0.5) (0 . -0.5)) ~ c2
  }
