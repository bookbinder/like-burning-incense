\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "50"
antKeysig = \key f \minor
psalmnum = "Phil_2_6-11"
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
  The law was gi -- ven to Mo -- ses, 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  but grace and truth come through Je -- sus Christ.
}
sopNotesAnt = \relative e' {
  r8 f8 f4 ees8 g aes bes aes[ g f] f4
  \noBreak \hideNotes f16 \unHideNotes
  \allowBreak f8
  \allowBreak g[ aes]
  \allowBreak g
  \allowBreak g([ aes] bes4)
  \allowBreak bes8
  \allowBreak g
  \allowBreak aes
  \allowBreak g
  \allowBreak g4( f) \bar "||"
}
altoNotesAnt = \relative c' {
  s2 s2 s4. s4 s8 s16 ees4. f2. ees4 c2
}
tenorNotesAnt = \relative g {
  c4 bes2. c4. aes4. s16 bes4.~ bes2.~ bes4~ bes( aes4)
}
bassNotesAnt = \relative c {
  aes'4 g2. f2. s16 ees4. des2. ees4 f2
}
