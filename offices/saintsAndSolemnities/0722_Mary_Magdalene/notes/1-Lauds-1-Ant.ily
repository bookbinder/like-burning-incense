\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "19"
antKeysig = \key aes \major
psalmnum = "Ps_63_2-9"
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
  Ve -- ry ear -- ly
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  in the mor -- ning af -- ter the sab -- bath, Ma -- ry
  Mag -- da -- lene came to the tomb, just as the sun
  was ri -- sing.
}
sopNotesAnt = \relative e' {
  ees8 f ees[ aes] aes4
  \noBreak \noBreak \hideNotes aes16 \unHideNotes
  \allowBreak aes8
  \allowBreak aes
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak g
  \allowBreak f
  \allowBreak ees
  \allowBreak f[ ees]
  \allowBreak ees4 \bar ","
  \allowBreak ees8
  \allowBreak ees
  \allowBreak g
  \allowBreak aes
  \allowBreak bes
  \allowBreak aes4
  \allowBreak f8
  \allowBreak aes
  \allowBreak g4 \bar "'"
  \allowBreak g8[ aes]
  \allowBreak f
  \allowBreak ees
  \allowBreak f[ g]
  \allowBreak f
  \allowBreak f[ ees]
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  ees\breve*8/16 s16 des2. c2 ees\breve*5/16~
  ees2~ ees4 des2~ des4. bes2
}
tenorNotesAnt = \relative g {
  
}
bassNotesAnt = \relative c {
  
}
