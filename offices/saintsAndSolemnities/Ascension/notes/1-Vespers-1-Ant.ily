\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "34"
antKeysig = \key aes \major
psalmnum = "Ps_110_1-5,_7"
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
  He as -- cen -- ded in -- to hea -- ven
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  and is sea -- ted at the right hand of the Fa -- ther,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  des8 f aes4 aes8 aes aes g![ aes f] f4
  \noBreak \hideNotes f16 \unHideNotes
  \allowBreak des8
  \allowBreak ees
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak ees
  \allowBreak f
  \allowBreak ges[ f ees]
  \allowBreak ees4
  \allowBreak ees8
  \allowBreak f
  \allowBreak ees[ des]
  \allowBreak des4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  des \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*7/16~ des4.~ des2 s16 c\breve*5/16 des\breve*7/16
  aes\breve*5/16 bes4 aes2
}
tenorNotesAnt = \relative g {
  f\breve*7/16 bes4. aes2~ s16 aes\breve*5/16 ges\breve*7/16
  f\breve*5/16 ges4~ ges f
}
bassNotesAnt = \relative c {
  des\breve*7/16~ des4.~ des2 s16 aes\breve*5/16 bes\breve*7/16
  des\breve*5/16~ des4~ des2
}
