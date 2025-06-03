\version "2.24.0"

% Will need these variables to build the cantor and organ scores:
antiphon = "M"
psalmtone = "19"
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
  Bles -- sed are you, O Vir -- gin Ma -- ry, 
  \markup { \tiny \raise #.5 \char ##x1F7B6 " "}
  for your great faith; all that the Lord pro -- mised
  you will come to pass through you, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  ees8[ aes] f ees f[ ees] des ees f f4 f
  \noBreak \hideNotes g16 \unHideNotes
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak f--[ bes]
  \allowBreak aes([ bes] aes4)
  \allowBreak r4 \bar "|"
  \allowBreak aes4
  \allowBreak g8
  \allowBreak aes
  \allowBreak f[ ees]
  \allowBreak f
  \allowBreak ees
  \allowBreak des4
  \allowBreak ees8
  \allowBreak ees[ f]
  \allowBreak ees
  \allowBreak des[ f]
  \allowBreak f
  \allowBreak ees4 \bar "'"
  \allowBreak f8
  \allowBreak f[ g]
  \allowBreak ees4
  ees \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*9/16 des\breve*5/16~ s16 des2~ des4 c2
  ees2 des2~ des4. c4. des4. bes4.
  c4 bes2
}
tenorNotesAnt = \relative g {
  aes\breve*9/16~ aes\breve*5/16 s16 g4 aes4~ aes2.~ aes2~ aes2~ aes4.~
  aes2. g4. aes4~ aes g
}
bassNotesAnt = \relative c {
  aes'\breve*9/16 des,\breve*5/16~ s16 des2 aes2. c2 des2 f4.
  aes,4. bes4. ees4.~ ees4~ ees2
}
