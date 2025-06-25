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
  A -- rise, a -- rise!
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  Wake from your slum -- ber, Je -- ru --
  sa -- lem, shake the chain from your neck, cap -- tive daugh -- ter
  Zi -- on.
}
sopNotesAnt = \relative e' {
  r8 des8 ges[ f] ges bes4( aes)
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak aes8[ bes]
  \allowBreak aes
  \allowBreak aes
  \allowBreak aes4
  \allowBreak ges8
  \allowBreak bes
  \allowBreak des[ ces]
  \allowBreak bes
  \allowBreak aes4 \bar ","
  \allowBreak aes8[ bes]
  \allowBreak aes
  \allowBreak ges[ f]
  \allowBreak ees8
  \allowBreak des
  \allowBreak ces([ ees] ges4) \bar "'"
  \allowBreak aes4
  \allowBreak ges8
  \allowBreak f[ ges]
  \allowBreak ees
  \allowBreak des4
  des4 \bar "||"
}
altoNotesAnt = \relative c' {
  r8 des8~ des4.~ des2 s16 ees2 des2 ees4. ees4 des4.
  bes2 ces2 ees4. ces4. aes2
}
tenorNotesAnt = \relative g {
  ges4~ ges4. f2 s16 ges2~ ges2 ees4. aes4
  f4. ges2~ ges2~ ges2.~ ges4 f
}
bassNotesAnt = \relative c {
  bes4~ bes4. des2 s16 ces2 bes2 aes4. ces4
  des4. ees2~ ees ces2. des2
}
