\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "21"
antKeysig = \key aes \major
psalmnum = "Dan_3_52-57"
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
  Bles -- sed are you, Lord, our God,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  in the fir -- ma -- ment of hea -- ven. You are wor -- thy
  of praise for -- e -- ver, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  aes8 g aes f[ ees] des[ f] ees f4
  \noBreak \hideNotes f16 \unHideNotes
  \allowBreak f8
  \allowBreak f
  \allowBreak g
  \allowBreak f
  \allowBreak f
  \allowBreak f
  \allowBreak f[ ees]
  \allowBreak ees4
  \allowBreak r4 \bar "|"
  \allowBreak ees8[ f]
  \allowBreak ees
  \allowBreak des
  \allowBreak f
  \allowBreak aes
  \allowBreak bes4
  \allowBreak aes8
  \allowBreak g
  \allowBreak aes
  \allowBreak \breathe
  \allowBreak g8
  \allowBreak f
  \allowBreak f[ ees]
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  ees\breve*5/16 r4. des\breve*8/16 s16 bes2.
  c4. des4. f\breve*5/16 des4 bes2
}
tenorNotesAnt = \relative g {
  aes\breve*5/16~ aes4.~ aes\breve*8/16~ s16 aes4 g2
  aes4.~ aes4.~ aes\breve*5/16~ aes4~ aes g
}
bassNotesAnt = \relative c {
  c\breve*5/16 f4. des\breve*8/16 s16 ees2.
  aes4. f4. des\breve*5/16 bes4 ees2
}
