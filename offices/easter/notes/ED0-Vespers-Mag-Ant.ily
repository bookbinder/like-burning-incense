\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "21"
antKeysig = \key aes \major
psalmnum = "Magnificat"
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
  I am the gate, says the Lord;
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  who -- ev -- er en -- ters through me shall be saved and
  find pas -- ture, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  aes4 f8 ees f[ ees] des[ ees] f f4( ees) 
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak ees8
  \allowBreak g
  \allowBreak aes
  \allowBreak bes
  \allowBreak bes
  \allowBreak bes
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak f[ aes]
  \allowBreak g[ f]
  \allowBreak ees
  \allowBreak f[ g]
  \allowBreak f[ ees]
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  \allowBreak ees \bar "||"
}
altoNotesAnt = \relative c' {
  c2. des4. c\breve*5/16 s16 ees\breve*5/16 ees~
  ees c\breve*7/16 bes2
}
tenorNotesAnt = \relative g {
  ees2. f4. aes\breve*5/16 s16 g\breve*5/16 c
  bes aes\breve*7/16~ aes4 g
}
bassNotesAnt = \relative c {
  aes2.~ 4.~ \breve*5/16 s16 ees'\breve*5/16~ ees~
  ees~ \breve*7/16~ 2
}
