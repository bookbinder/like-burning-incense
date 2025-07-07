\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "60"
antKeysig = \key ges \major
psalmnum = "Ps_117"
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
  Af -- ter he spoke to his dis -- ci -- ples,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the Lord Je -- sus as -- cen -- ded in -- to hea -- ven
  where he is sea -- ted at the right hand of the Fa -- ther,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  des8 f ges aes aes ges bes bes[ aes] aes4
  \noBreak \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes[ f]
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak aes
  \allowBreak ges[ f]
  \allowBreak ees
  \allowBreak ees
  \allowBreak f
  \allowBreak ees[ des]
  \allowBreak des4 \bar ","
  \allowBreak des8
  \allowBreak des
  \allowBreak des
  \allowBreak ces[ ees ges]
  \allowBreak ges4
  \allowBreak f8
  \allowBreak ges
  \allowBreak aes[ bes]
  \allowBreak aes4
  \allowBreak ges8
  \allowBreak bes
  \allowBreak aes[ des,]
  \allowBreak des4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  \allowBreak des \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*5/16~ des2~ des4.~ s16 des4 ees\breve*9/16
  aes,\breve*7/16 ces\breve*7/16 ees2 des4~
  des4~ des4. bes4 aes2
}
tenorNotesAnt = \relative g {
  f\breve*5/16 bes4 ges4 f4.~ s16 f4 ges\breve*9/16
  f\breve*7/16 ges\breve*7/16~ ges2.
  f4~ f4. ges4~ ges f
}
bassNotesAnt = \relative c {
  des\breve*5/16~ des2~ des4.~ s16 des4 ces\breve*9/16
  des\breve*7/16 ees\breve*7/16 ces2 bes4
  des4~ des4.~ des4~ des2
}
