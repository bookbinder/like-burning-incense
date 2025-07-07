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
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
  \set includeGraceNotes = ##t
  Thanks be to God,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  who has gi -- ven us the vic -- to -- ry through our Lord Je -- sus
  Christ, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  des4 ges8 f ges([ bes] aes4) 
  \noBreak \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak ges
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak aes4
  \allowBreak bes8
  \allowBreak ces8[ bes]
  \allowBreak aes
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak aes
  \allowBreak ges[ ees]
  \allowBreak f[ ges]
  \allowBreak ees
  \allowBreak des4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak des4
  des \bar "||"
}
altoNotesAnt = \relative c' {
  des2 bes4 des\breve*10/16 s16 ees\breve*7/16 des4~ des2. ces4 aes2
}
tenorNotesAnt = \relative g {
  ges2~ ges4 f\breve*10/16 s16 ges\breve*7/16~ ges4~ ges2.~ ges4~ ges f
}
bassNotesAnt = \relative c {
  bes2 des4~ des\breve*10/16 s16 ces\breve*7/16 bes4~ bes2. aes4 des2
}
