\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "36"
antKeysig = \key ges \major
psalmnum = "Ps_47"
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
  God as -- cends
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  to shouts of joy, the Lord to the blast of trum -- pets,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  des8[ aes'] aes aes4
  \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak ges[ bes]
  \allowBreak bes
  \allowBreak aes4 \bar "'"
  \allowBreak aes8
  \allowBreak ges[ f]
  \allowBreak ees
  \allowBreak f
  \allowBreak ges4
  \allowBreak ges8
  \allowBreak aes[ des,]
  \allowBreak des4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des2.~ s16 des4. ees4. bes2 des4. aes\breve*5/16
  bes4 aes2
}
tenorNotesAnt = \relative g {
  f2. s16 ges4.~ ges4.~ ges2~ ges4. f\breve*5/16
  ges4~ ges f
}
bassNotesAnt = \relative c {
  des2. s16 bes4. ces4. ees2 bes4. des\breve*5/16~
  des4~ des2
}
