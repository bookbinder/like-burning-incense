\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key f \minor
antiphon = "M"
psalmtone = "50"
psalmtonestruct = "33"
psalmnum = "Magnificat"
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
    By your trust -- ing ac -- cep -- tance of trials, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    you will gain your life, says the Lord.
}
sopNotesAnt = \relative e' {
  f8 g aes g f g aes bes bes4
  \noBreak \hideNotes bes16 \unHideNotes  %so taht I can align the * better
  \allowBreak aes4
  \allowBreak aes8
  \allowBreak g[ bes aes]
  \allowBreak g
  \allowBreak f([ ees] c4) \bar "'"
  \allowBreak c8[ ees]
  \allowBreak ees
  \allowBreak g4( f) \bar "||"
}
altoNotesAnt = \relative c' {
  c\breve*5/16 ees4.~ ees4~ s16 ees4. f2 c2 bes4. aes2
}
tenorNotesAnt = \relative g {
  aes\breve*5/16 bes4. g4 s16 aes4.~ aes2 g2 ees4. c2
}
bassNotesAnt = \relative c {
  f\breve*5/16 ees4.~ ees4 s16 c4. des2 ees2 g,4. f2
}
