\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "1"
psalmtone = "21"
antKeysig = \key aes \major
psalmnum = "Ps_110_1-5,_7"
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
  Seek the things that are a -- bove
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  where Christ is seat -- ed at God's right hand,
  al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  ees8[ f] ees g[ aes] f f g ees4
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak des
  \allowBreak f
  \allowBreak aes
  \allowBreak g[ aes]
  \allowBreak f
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  \allowBreak ees \bar "||"
}
altoNotesAnt = \relative c' {
  s\breve*8/16 s2. s16 des2. ees4. des4 bes2
}
tenorNotesAnt = \relative g {
  c\breve*8/16 bes2. s16 aes2.~ 4.~ 4~ 4 g
}
bassNotesAnt = \relative c {
  aes'\breve*8/16 g2. s16 f2. c4. bes4 ees2
}
