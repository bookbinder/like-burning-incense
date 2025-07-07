\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "B"
psalmtone = "31"
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
  I am the li -- ving bread
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  come down from hea -- ven; a -- ny -- one who eats this bread
  will live for -- e -- ver, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  aes4 f8 ges aes[ bes] aes aes4
  \noBreak \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak ges[ aes]
  \allowBreak aes
  \allowBreak des,4
  \allowBreak des
  \allowBreak r4 \bar "|"
  \allowBreak des8[ ees]
  \allowBreak des
  \allowBreak des4
  \allowBreak des8
  \allowBreak ees[ f]
  \allowBreak ges4
  \allowBreak ges
  \allowBreak ges8
  \allowBreak aes([ bes] aes4)
  \allowBreak ges8
  \allowBreak aes[-- des,]
  \allowBreak des4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  des \bar "||"

}
altoNotesAnt = \relative c' {
  des\breve*10/16 s16 ces4. aes2.
  bes\breve*8/16 ces\breve*5/16 ees\breve*5/16 aes,4~ aes4. bes4 aes2  
}
tenorNotesAnt = \relative g {
  f\breve*10/16 s16 ees4. ges4 f2
  ges\breve*8/16~ ges\breve*5/16~ ges\breve*5/16~ ges4 f4. ges4~ ges f
}
bassNotesAnt = \relative c {
  des\breve*10/16~ s16 des4.~ des2.
  ges\breve*8/16 ees\breve*5/16 ces\breve*5/16 des4~ des4.~ des4~ des2
}
