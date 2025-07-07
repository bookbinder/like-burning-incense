\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "2"
psalmtone = "50"
antKeysig = \key f \minor
psalmnum = "Dan_3_57-88,_56"
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
  God's grace in me
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  has not been with -- out fruit; it is al -- ways at work in me.
}
sopNotesAnt = \relative e' {
  f8[ g] aes[ g] f g4
  \noBreak \noBreak \hideNotes g16 \unHideNotes
  g8 g[ aes] g f ees[ g] g4( f) \bar "," f8 f f[ ees c]
  c4 c8 ees[ f] g f4 \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*5/16 ees\breve*7/16~ s16 ees4 des2. c2.~
  c4.~ c4
}
tenorNotesAnt = \relative g {
  aes\breve*5/16 bes\breve*7/16~ s16 bes4 aes2. g2.~
  g4. aes4
}
bassNotesAnt = \relative c {
  f\breve*5/16 ees\breve*7/16 s16 c4 des2. ees2.
  c4. f4
}
