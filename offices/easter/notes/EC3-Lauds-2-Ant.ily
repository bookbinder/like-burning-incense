\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "60"
antKeysig = \key ges \major
psalmnum = "Isa_26_1-4,_7-9,_12"
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
  We have placed all our hope in the Lord,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and he has gi -- ven us his peace, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  des8 des ges[ f] ges ges ges[ bes] aes ges aes([ bes] aes4)
  \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes
  \allowBreak aes
  \allowBreak ges[ aes]
  \allowBreak ges
  \allowBreak f
  \allowBreak ees
  \allowBreak ees4( des) \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  des \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*10/16~ des\breve*7/16 s16 bes\breve*5/16 s2 s8
  ces4 aes2
}
tenorNotesAnt = \relative g {
  ges\breve*10/16 f\breve*7/16 s16 ges\breve*5/16
  aes\breve*5/16 ges4~ ges f
}
bassNotesAnt = \relative c {
  bes\breve*10/16 des\breve*7/16 s16 ees\breve*5/16
  f\breve*5/16 ces4 des2
}
