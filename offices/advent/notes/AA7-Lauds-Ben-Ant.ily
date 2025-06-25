\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "36"
antKeysig = \key ges \major
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% master transposition after accounting for psalm tone
master-from-pitch = ges
master-to-pitch = f


text = \lyricmode {
  \set includeGraceNotes = ##t
  Ba -- nish your fears,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  O peo -- ple of Zi -- on; God, your own God, is co -- ming
  to you, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  des8 ees des des4( aes')
  \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak bes4
  \allowBreak aes8
  \allowBreak ges
  \allowBreak aes[ des,]
  \allowBreak des4 \bar ","
  \allowBreak aes'8[ bes]
  \allowBreak aes
  \allowBreak ces[ bes aes]
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak ges4
  \allowBreak ges8
  \allowBreak aes8
  \allowBreak des,4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  des \bar "||"
}
altoNotesAnt = \relative c' {
  s4. des\breve*5/16~ s16 des2~ des2 ees\breve*9/16
  des2~ des4. bes4 aes2
}
tenorNotesAnt = \relative g {
  bes4. aes\breve*5/16 s16 ges2 f2 ges\breve*9/16~
  ges2 aes4. ges4~ ges f
}
bassNotesAnt = \relative c {
  ges'4. f\breve*5/16 s16 ges2 des2 ces\breve*9/16
  bes2 f'4. ges4 des2
}
