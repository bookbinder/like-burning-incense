\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "50"
antKeysig = \key f \minor
psalmnum = "Ps_32"
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
  We have been rec -- on -- ciled to God
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  by the death of his Son, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  f4 ees8 f g[ aes] bes aes g g4( f)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak ees8
  \allowBreak f
  \allowBreak f[ c']
  \allowBreak bes
  \allowBreak aes
  \allowBreak g([ aes] bes4) \bar "'"
  \allowBreak g8
  \allowBreak aes[ g]
  \allowBreak f4
  \allowBreak f \bar "||"
}
altoNotesAnt = \relative c' {
  s2 f\breve*5/16 s2 s16 s4 f2~ \breve*5/16 des4 c2
}
tenorNotesAnt = \relative g {
 c2 des\breve*5/16 c2 s16 bes4  aes2~ \breve*5/16 bes4~ 4 aes
}
bassNotesAnt = \relative c {
  aes'2~ \breve*5/16~ 2 s16 g4 f2 des\breve*5/16 bes4 f'2
}
