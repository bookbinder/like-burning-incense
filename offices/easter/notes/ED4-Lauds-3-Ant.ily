\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "3"
psalmtone = "50"
antKeysig = \key f \minor
psalmnum = "Ps_146"
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
  Zi -- on,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  the Lord, your God, will reign for -- e -- ver, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  f8([ ees] aes[ g f]) f4
  \noBreak \hideNotes f16 \unHideNotes
  \allowBreak f8
  \allowBreak f[ ees]
  \allowBreak f
  \allowBreak aes[ bes]
  \allowBreak aes
  \allowBreak g([ aes] bes4)
  \allowBreak aes8
  \allowBreak g[ f]
  \allowBreak f4 \bar "'"
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak f4
  f \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*8/16 s16 s4. ees4. f\breve*5/16 des\breve*5/16 ees4 c2
}
tenorNotesAnt = \relative g {
  c\breve*8/16 s16 bes4. aes4.~ aes\breve*5/16 bes\breve*5/16~ bes4~ bes aes
}
bassNotesAnt = \relative c {
  aes'\breve*8/16 s16 g4. c,4. des\breve*5/16 bes\breve*5/16 c4 f2
}
