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
  Re -- ceive the Ho -- ly Spi -- rit;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the sins of those you for -- give shall be for -- gi -- ven,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  r8 des8 ges[ f] ges ges[ aes] aes des,([-- f] ges[ f ees des]) des4 
  \noBreak \hideNotes des16 \unHideNotes
  \allowBreak des8
  \allowBreak ges[ f]
  \allowBreak ges
  \allowBreak ges[ bes]
  \allowBreak aes
  \allowBreak ges
  \allowBreak aes([ bes] aes4)
  \allowBreak aes8
  \allowBreak ges
  \allowBreak ees
  \allowBreak f[ ees des]
  \allowBreak des4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  des \bar "||"
}
altoNotesAnt = \relative c' {
  r8 des8 bes4. ees4. des\breve*9/16 s16 bes4.~ bes2
  des\breve*5/16 bes4~ bes4. aes4. bes4 aes2
}
tenorNotesAnt = \relative g {
  bes4 ges4.~ ges4.~ ges\breve*9/16 s16 ges4.~ ges2
  f\breve*5/16 ees4 ges4. f4. ges4~ ges f
}
bassNotesAnt = \relative c {
  ges'4~ ges4.~ ces,4. bes\breve*9/16 s16 ees4.~ ees2
  des\breve*5/16~ des4~ des4.~ des4.~
  des4~ des2
}
