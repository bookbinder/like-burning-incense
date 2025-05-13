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
  I am a -- scen -- ding
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  to my Fa -- ther and your Fa -- ther, to my God and your God,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  des4 ees8 des f[ ges aes] aes4
  \noBreak \hideNotes aes16 \unHideNotes
  aes8 ges[ bes] bes4 aes8 ges f[ ges] aes4 aes \bar "'"
  aes8 ges[ f ees] ees4 f8 ges[ f ees] ees4 \bar "'"
  des8[ ees] f[ ees] ees[ des] des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*10/16 s16 ges4 des2 f4 ees des4. bes\breve*6/16
  ees\breve*5/16 aes,1
}
tenorNotesAnt = \relative g {
  f\breve*10/16 s16 bes4 ges2 aes4 ges f4. ges\breve*6/16~
  ges\breve*5/16~ ges2 f
}
bassNotesAnt = \relative c {
  des\breve*10/16~ s16 des4~ des2.~ des4~ des4. ees\breve*6/16
  ces\breve*5/16 des1
}
