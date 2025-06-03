\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "60"
antKeysig = \key ges \major
psalmnum = "Magnificat"
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
  Do not be a -- fraid, Ma -- ry,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  you have found fa -- vor with God; you will con -- ceive
  and give birth to a Son, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 des8 ges4 f8 ges ges[ bes] aes([-- bes] ces[ bes aes]) aes4
  \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak bes
  \allowBreak aes
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ges
  \allowBreak ees4( des) \bar ","
  \allowBreak des8
  \allowBreak des
  \allowBreak des
  \allowBreak ces([ ees] ges4)
  \allowBreak ges8
  \allowBreak ges
  \allowBreak f[ ges]
  \allowBreak ees
  \allowBreak des
  \allowBreak des([ ees] des4) \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  des \bar "||"
}
altoNotesAnt = \relative c' {
  bes2. des4 ees\breve*10/16 s16 bes2 s\breve*7/16
  ces\breve*6/16~ ces2~ ces4 bes4. ces4 aes2
}
tenorNotesAnt = \relative g {
  ges2.~ ges4~ ges\breve*10/16 s16 ges2 aes\breve*7/16
  ges\breve*6/16~ ges2~ ges4~ ges4.~ ges4~ ges4 f
}
bassNotesAnt = \relative c {
  ges'2. bes,4 ces\breve*10/16 s16 ees2 f\breve*7/16
  ees\breve*6/16 ces2 ges4~ ges4. ces4 des2
}
