\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "B"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Benedictus"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = a
%% transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    Li -- sten and un -- der -- stand the in -- struc -- tions 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    the Lord has gi -- ven to you.
}
sopNotesAnt = \relative e' {
  aes4 g8 f g f f[ c'] c c c[ bes] bes4
  \noBreak \hideNotes bes16 \unHideNotes  %so taht I can align the * better
  \allowBreak bes8
  \allowBreak c[ f,]
  \allowBreak f
  \allowBreak g4
  \allowBreak f8
  \allowBreak ees
  \allowBreak f4 \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*10/16 f\breve*5/16 s16 c4.~ c2~ c4
}
tenorNotesAnt = \relative g {
  aes\breve*10/16~ aes\breve*5/16 s16 f4. ees2 aes4
}
bassNotesAnt = \relative c {
  f\breve*10/16 des\breve*5/16 s16 aes4. c2 f,4
}
