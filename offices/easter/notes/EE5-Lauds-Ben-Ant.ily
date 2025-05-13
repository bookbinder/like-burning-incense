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
  If you keep my com -- mand -- ments,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you will live in my love, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  des8 f aes4 g8 aes f[ ees des] des4
  \noBreak \hideNotes des16 \unHideNotes
  \allowBreak des8
  \allowBreak des
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak des
  \allowBreak ees[-- f]
  \allowBreak \breathe
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  des \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*13/16^"Different psalm tone. Does it work?" s16 c\breve*9/16 bes4 aes
}
tenorNotesAnt = \relative g {
  f\breve*13/16 s16 aes\breve*9/16 f2
}
bassNotesAnt = \relative c {
  des\breve*13/16 s16 aes\breve*9/16 des2
}
