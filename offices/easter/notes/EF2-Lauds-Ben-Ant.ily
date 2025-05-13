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
  By rai -- sing Je -- sus Christ from the dead,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  God has gi -- ven us a new birth to a li -- ving hope in the
  pro -- mise of an in -- her -- i -- tance that will last
  for -- e -- ver, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 des8 ees des des[ aes'] aes aes4 aes8 ges ges4( f)
  \noBreak \hideNotes f16 \unHideNotes
  \allowBreak aes8[ bes]
  \allowBreak aes
  \allowBreak bes4
  \allowBreak aes8
  \allowBreak ges
  \allowBreak aes
  \allowBreak ges[ f ees]
  \allowBreak ees4
  \allowBreak ees8
  \allowBreak f
  \allowBreak ges[ f]
  \allowBreak ees4
  \allowBreak des8([ ees] des) \bar "'"
  \allowBreak des8
  \allowBreak ees
  \allowBreak ges
  \allowBreak f
  \allowBreak ees
  \allowBreak f
  \allowBreak ges
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak aes
  \allowBreak ges[ aes]
  \allowBreak aes
  \allowBreak aes[ des,]
  \allowBreak des4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  des \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*4/16 des4.~ des2~ des2~ s16 des4.~ des\breve*5/16~
  des4. ces2~ ces4. s2. des\breve*5/16~ des\breve*7/16 ces4. aes\breve*5/16 bes4 aes2
}
tenorNotesAnt = \relative g {
  f\breve*7/16 bes2 aes2 s16 f4. ges\breve*5/16~
  ges4.~ ges2~ ges4. aes2. ges\breve*5/16 f\breve*7/16 ees4. ges4 f4. ges4~
  ges f
}
bassNotesAnt = \relative c {
  des\breve*7/16~ des2~ des2~ s16 des4. ges,\breve*5/16
  bes4. ces2 ees4. f2. bes,\breve*5/16 des\breve*7/16~ des4. des\breve*5/16~
  des4~ des2
}
