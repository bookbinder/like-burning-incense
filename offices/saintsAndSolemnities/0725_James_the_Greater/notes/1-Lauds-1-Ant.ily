\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "21"
antKeysig = \key aes \major
psalmnum = "Ps_63_2-9"
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
  As he was wal -- king a -- long,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Je -- sus saw James, the son of Ze -- be -- dee, and
  his bro -- ther John, and he called them.
}
sopNotesAnt = \relative e' {
  r8 ees8 ees ees f ees des f4
  \noBreak \noBreak \hideNotes f16 \unHideNotes
  \allowBreak ees8[ f]
  \allowBreak ees
  \allowBreak ees4
  \allowBreak des8[ f]
  \allowBreak aes
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak g
  \allowBreak f
  \allowBreak f4
  \allowBreak f8
  \allowBreak ees
  \allowBreak f[ g]
  \allowBreak f
  \allowBreak f4 \bar "'"
  \allowBreak f8
  \allowBreak g
  \allowBreak ees4
  \allowBreak ees \bar "||"
}
altoNotesAnt = \relative c' {
  s2 s\breve*5/16 s16 c\breve*5/16 des2.~ des2~
  des\breve*5/16~ des2 bes
}
tenorNotesAnt = \relative g {
  aes2~ aes\breve*5/16~ s16 aes\breve*5/16~ aes2.~ aes2~
  aes\breve*5/16~ aes2~ aes4 g
}
bassNotesAnt = \relative c {
  c2 des\breve*5/16 s16 aes\breve*5/16 f'2. des2~
  des\breve*5/16 bes2 ees
}
