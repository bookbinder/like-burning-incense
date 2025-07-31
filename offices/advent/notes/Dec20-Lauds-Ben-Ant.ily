\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "B"
psalmtone = "26"
psalmtonestruct = "33"
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
  The an -- gel Ga -- bri -- el
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  was sent to the
  Vir -- gin Ma -- ry, who was en -- gaged to be mar -- ried
  to Jo -- seph.
}
sopNotesAnt = \relative e' {
  r8 f8 des ees ees[ f] ees ees4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak ees8
  \allowBreak f[ aes]
  \allowBreak aes
  \allowBreak aes
  \allowBreak bes
  \allowBreak aes
  \allowBreak g[ aes f]
  \allowBreak f4 \bar ","
  \allowBreak f8
  \allowBreak f
  \allowBreak g
  \allowBreak aes4
  \allowBreak g8
  \allowBreak f
  \allowBreak g4
  \allowBreak f8
  \allowBreak f
  \allowBreak ees4
  \allowBreak ees4 \bar "||"
}
altoNotesAnt = \relative c' {
  s4 des4~ des4. c4. s16 ees2. des\breve*8/16 des\breve*8/16 bes2
}
tenorNotesAnt = \relative g {
  aes4 f4 aes2.~ s16 aes2.~ aes\breve*8/16~ aes\breve*8/16~ aes4 g4
}
bassNotesAnt = \relative c {
  des2 aes2. s16 c2. des\breve*8/16 bes\breve*8/16 ees2
}
