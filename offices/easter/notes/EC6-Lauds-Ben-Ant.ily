\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "60"
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
  Who -- e -- ver eats my flesh
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and drinks my blood shall live in me and I in him,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 des8 des ees ges[ aes] ges ees([ f] ges4)
  \noBreak \noBreak \hideNotes ges16 \unHideNotes
  \allowBreak ges8
  \allowBreak aes[ bes aes]
  \allowBreak ges
  \allowBreak bes4( aes) \bar "'"
  \allowBreak aes8
  \allowBreak ges4
  \allowBreak ees8
  \allowBreak des4
  \allowBreak aes'8
  \allowBreak ges4
  \allowBreak ees8
  \allowBreak ees4( des) \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  des \bar "||"
}
altoNotesAnt = \relative c' {
  s4 des4~ des\breve*8/16 s16 ees2 des\breve*5/16 bes4. des4.
  s4. s\breve*5/16 ces4 aes2
}
tenorNotesAnt = \relative g {
  ges2~ ges\breve*8/16~ s16 ges2 f\breve*5/16 ges4. aes4. ces4.
  aes\breve*5/16 ges4~ ges f
}
bassNotesAnt = \relative c {
  bes2~ bes\breve*8/16 s16 ces2 des\breve*5/16 ees4. f4. ees4.
  f\breve*5/16 ces4 des2
}
