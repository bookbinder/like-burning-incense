\version "2.20.0"
%% \include "../../../lbi_defs.ily"

% Will need these variables to build the cantor and organ scores:
antKeysig =  \key ges \major
antiphon = "M"
psalmtone = "37"
psalmtonestruct = "33"
psalmnum = "Magnificat"
% transposition interval for the corresponding psalm tone
% to match the key signature of this antiphon. For
% use in in cantor (antiphon) and organ (psalm) scores
frompitch = a
topitch = aes
%% transposition after accounting for psalm tone
master-from-pitch = a
master-to-pitch = a


text = \lyricmode {
    \set includeGraceNotes = ##t
    One of them, re -- a -- li -- zing that he had been cured, 
    \markup { \tiny \raise #.5 \char ##x1F7B6 " "} 
    re -- turned prai -- sing God in a loud voice, al -- le -- lu -- ia.
}
sopNotesAnt = \relative e' {
  des8[ aes'] aes aes4 aes8 aes f ges aes \bar ""
  aes4 aes8 bes ces([ bes] aes4)
  \hideNotes aes16 \unHideNotes  %so taht I can align the * better
  \allowBreak aes8
  \allowBreak ges([ ees] f4)
  \allowBreak ees8[ f]
  \allowBreak ees
  \allowBreak des[ ees]
  \allowBreak des
  \allowBreak des
  \allowBreak ces[ ees ges]
  \allowBreak ges4 \bar "'"
  \allowBreak ees8
  \allowBreak f[ ees]
  \allowBreak ees[ des]
  \allowBreak des4 \bar "||"
}
altoNotesAnt = \relative c' {
  des\breve*10/16 ees\breve*9/16 s16 bes2~ bes4. s2 ces2.~ ces4 aes2
}
tenorNotesAnt = \relative g {
  f\breve*10/16 ges\breve*9/16~ s16 ges2~ ges4. aes2 ges2.~ ges4~ ges4 f
}
bassNotesAnt = \relative c {
  des\breve*10/16 ces\breve*9/16 s16 ees2~ ees4. f2 ees2. ces4 des2
}
