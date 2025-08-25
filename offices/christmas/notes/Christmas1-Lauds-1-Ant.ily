\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "1"
psalmtone = "50"
psalmtonestruct = "33"
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
  Tell us, shep -- herds,
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  what have you seen? Who has
  ap -- peared on earth? We have seen a new -- born in -- fant
  and a choir of an -- gels prai -- sing the Lord, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  aes8 aes g[ aes] f4
  \noBreak \noBreak \hideNotes f16 \unHideNotes
  \allowBreak f8
  \allowBreak f
  \allowBreak aes
  \allowBreak g4 \bar "'"
  \allowBreak ees8[ f]
  \allowBreak aes
  \allowBreak g
  \allowBreak ees8
  \allowBreak g
  \allowBreak f4
  \allowBreak r4 \bar "|"
  \allowBreak ees8
  \allowBreak f
  \allowBreak aes
  \allowBreak g
  \allowBreak ees
  \allowBreak g
  \allowBreak f4
  \allowBreak f4 \bar "'"
  \allowBreak ees8
  \allowBreak f
  \allowBreak aes
  \allowBreak g
  \allowBreak aes[ bes]
  \allowBreak bes4
  \allowBreak aes8[ bes]
  \allowBreak g
  \allowBreak aes
  \allowBreak f[ aes]
  \allowBreak \breathe
  \allowBreak g8
  \allowBreak ees
  \allowBreak g4
  \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*9/16 s16
  ees4~ ees2~ ees4 c2 ees2. s2 s4
  f4~ f2 des2 ees2 c2
}
tenorNotesAnt = \relative g {
  aes\breve*9/16 s16
  bes4 aes2 bes4
  aes2 c2.~ c2.~ c4 bes2~ bes2 aes4 bes4~ bes4 aes4
}
bassNotesAnt = \relative c {
  f\breve*9/16 s16
  ees4 c2~ c4 f2 c'2. aes2. f4 des2
  bes2 c2 f2
}
