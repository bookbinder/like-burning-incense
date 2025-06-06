\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "50"
antKeysig = \key f \minor
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
  Be com -- for -- ted, my peo -- ple;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  be com -- for -- ted, says the Lord your God.  
}
sopNotesAnt = \relative e' {
  aes4 aes8 g f ees f[ aes] aes4
  \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak f8[ aes]
  \allowBreak bes[ c]
  \allowBreak bes
  \allowBreak bes4 \bar "'"
  \allowBreak aes8
  \allowBreak f
  \allowBreak ees[ f]
  \allowBreak g
  \allowBreak g4( f) \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*10/16~ s16 c4 f\breve*7/16 ees4. c2
}
tenorNotesAnt = \relative g {
  aes\breve*10/16~ s16 aes4~ aes\breve*7/16 bes4.~ bes4( aes)
}
bassNotesAnt = \relative c {
  f\breve*10/16 s16 ees4 des\breve*7/16 c4. f2
}
