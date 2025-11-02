\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "50"
antKeysig = \key f \minor
psalmnum = "Ps_136_1-9"
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
  Who -- ev -- er is in Christ
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  is a new crea -- ture, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 f8 aes g f f[ aes] bes4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak bes8
  \allowBreak bes
  \allowBreak bes--[ c]
  \allowBreak f,4
  \allowBreak f \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak f4
  \allowBreak f \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*7/16 f2. s16 des\breve*5/16 ees4 c2
}
tenorNotesAnt = \relative g {
  aes\breve*7/16~ aes2. s16 bes\breve*5/16~ 4~ 4 aes
}
bassNotesAnt = \relative c {
  f\breve*7/16 des2. s16 bes\breve*5/16 c4 f2
}
